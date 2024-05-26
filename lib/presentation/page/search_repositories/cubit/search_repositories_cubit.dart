import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/use_case/search_repositories_use_case.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/cubit/search_repositories_state.dart';
import 'package:github_repository_search_flutter/utils/core_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepositoriesCubit extends CoreCubit<SearchRepositoriesState> {
  final SearchRepositoriesUseCase _searchRepositoriesUseCase;

  SearchRepositoriesCubit(
    this._searchRepositoriesUseCase,
  ) : super(const SearchRepositoriesState.idle());

  void searchRepositories(String query) async {
    emit(const SearchRepositoriesState.loading());
    if (query.isEmpty) {
      emit(const SearchRepositoriesState.loaded(repositories: []));
      return;
    }
    try {
      final List<GithubRepository> repositories = await _searchRepositoriesUseCase(query);
      emit(SearchRepositoriesState.loaded(repositories: repositories));
    } catch (e) {
      emit(const SearchRepositoriesState.error());
    }
  }
}
