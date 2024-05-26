import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/service/github_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepositoriesUseCase {
  final GithubService _githubService;

  const SearchRepositoriesUseCase(this._githubService);

  Future<List<GithubRepository>> call(String query) async => _githubService.searchRepositories(query);
}
