import 'package:github_repository_search_flutter/data/github_repositories/data_source/github_api_data_source.dart';
import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repositories_response_dto.dart';
import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repository_dto.dart';
import 'package:github_repository_search_flutter/data/github_repositories/mapper/github_repository_dto_to_github_repository_mapper.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository_data.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/service/github_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';

final RegExp lastPagePattern = RegExp(r'(?<=<)([\S]*)(?=>; rel="last")', caseSensitive: false);
final RegExp pageValuePattern = RegExp(r'&page=(\d+)');

@LazySingleton(as: GithubService)
class GithubServiceImpl implements GithubService {
  final GithubApiDataSource _githubDataSource;
  final GithubRepositoryDtoToGithubRepositoryMapper _mapper;

  const GithubServiceImpl(
    this._githubDataSource,
    this._mapper,
  );

  @override
  Future<GithubRepositoryData> searchRepositories(String query, int perPage, int page) async {
    final HttpResponse<GithubRepositoriesResponseDto> responseDto =
        await _githubDataSource.getGithubRepositories(query, 'stars', perPage, page);

    final header = responseDto.response.headers;
    final String linkHeader = header.map['link']!.first;
    final Match? urlMatch = lastPagePattern.firstMatch(linkHeader);
    final String lastUrl = urlMatch!.group(1)!;
    final Match? pageMatch = pageValuePattern.firstMatch(lastUrl);
    final String pageValue = pageMatch!.group(1)!;

    final int totalPages = int.parse(pageValue);
    final List<GithubRepositoryDto> githubRepositoryDtoList = responseDto.data.items;

    return GithubRepositoryData(
      totalPages: totalPages - 1,
      items: githubRepositoryDtoList.map((e) => _mapper(e)).toList(growable: false),
    );
  }
}
