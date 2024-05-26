import 'package:dio/dio.dart' hide Headers;
import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repositories_response_dto.dart';
import 'package:github_repository_search_flutter/utils/api_endpoints.dart';
import 'package:github_repository_search_flutter/utils/networking_params.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'github_api_data_source.g.dart';

@injectable
@RestApi()
abstract class GithubApiDataSource {
  @factoryMethod
  factory GithubApiDataSource(Dio dio) = _GithubApiDataSource;

  @GET(ApiEndpoints.searchRepositories)
  @Headers(<String, dynamic>{
    'Accept': 'application/vnd.github+json',
    'X-GitHub-Api-Version': '2022-11-28',
  })
  Future<HttpResponse<GithubRepositoriesResponseDto>> getGithubRepositories(
    @Query(NetworkingParams.query) String query,
    @Query(NetworkingParams.sort) String stars,
    @Query(NetworkingParams.perPage) int perPage,
    @Query(NetworkingParams.page) int page,
  );
}
