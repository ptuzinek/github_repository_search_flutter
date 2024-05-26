import 'package:github_repository_search_flutter/data/github_repositories/data_source/github_api_data_source.dart';
import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repositories_response_dto.dart';
import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repository_dto.dart';
import 'package:github_repository_search_flutter/data/github_repositories/mapper/github_repository_dto_to_github_repository_mapper.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/service/github_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GithubService)
class GithubServiceImpl implements GithubService {
  final GithubApiDataSource _githubDataSource;
  final GithubRepositoryDtoToGithubRepositoryMapper _mapper;

  const GithubServiceImpl(
    this._githubDataSource,
    this._mapper,
  );

  @override
  Future<List<GithubRepository>> searchRepositories(String query) async {
    final GithubRepositoriesResponseDto responseDto = await _githubDataSource.getGithubRepositories(
      query,
      'stars',
      2,
    );
    final List<GithubRepositoryDto> githubRepositoryDtoList = responseDto.items;

    return githubRepositoryDtoList.map((e) => _mapper(e)).toList(growable: false);
  }
}
