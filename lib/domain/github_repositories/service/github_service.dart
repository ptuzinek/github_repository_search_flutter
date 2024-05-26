import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';

abstract class GithubService {
  Future<List<GithubRepository>> searchRepositories(String query);
}
