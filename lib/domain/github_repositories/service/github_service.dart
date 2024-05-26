import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository_data.dart';

abstract class GithubService {
  Future<GithubRepositoryData> searchRepositories(String query, int perPage, int page);
}
