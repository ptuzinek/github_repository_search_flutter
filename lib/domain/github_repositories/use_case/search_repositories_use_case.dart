import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository_data.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/service/github_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepositoriesUseCase {
  final GithubService _githubService;

  const SearchRepositoriesUseCase(this._githubService);

  Future<GithubRepositoryData> call(String query, int page, {int perPage = 4}) async =>
      _githubService.searchRepositories(query, perPage, page);
}
