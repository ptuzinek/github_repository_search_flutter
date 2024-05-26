import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository_data.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/use_case/search_repositories_use_case.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/cubit/search_repositories_state.dart';
import 'package:github_repository_search_flutter/utils/core_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepositoriesCubit extends CoreCubit<SearchRepositoriesState> {
  final SearchRepositoriesUseCase _searchRepositoriesUseCase;

  SearchRepositoriesCubit(
    this._searchRepositoriesUseCase,
  ) : super(const SearchRepositoriesState.initial());

  List<GithubRepository> _repositories = [];
  int? _totalPages;
  int _page = 1;
  String _query = '';
  bool get _showLoadMoreButton => _totalPages != null && _page < _totalPages!;

  Future<void> searchRepositories(String query) async {
    emit(const SearchRepositoriesState.loading());
    if (query.isEmpty) {
      emit(const SearchRepositoriesState.loaded(repositories: [], showLoadMoreButton: false));
      return;
    }
    try {
      _page = 1;
      _repositories.clear();
      _query = query;
      final GithubRepositoryData githubRepositoryData = await _searchRepositoriesUseCase(_query, _page);

      _totalPages = githubRepositoryData.totalPages;

      _repositories.addAll(githubRepositoryData.items);
      emit(SearchRepositoriesState.loaded(repositories: _repositories, showLoadMoreButton: _showLoadMoreButton));
      _page++;
    } catch (_) {
      emit(const SearchRepositoriesState.error());
    }
  }

  Future<void> loadMoreRepositories() async {
    if (_totalPages != null && _page <= _totalPages!) {
      try {
        emit(SearchRepositoriesState.loadingNewItems());

        final GithubRepositoryData githubRepositoryData = await _searchRepositoriesUseCase(_query, _page);
        final List<GithubRepository> newList = List.from(_repositories);
        newList.addAll(githubRepositoryData.items);
        _repositories = newList;
        emit(SearchRepositoriesState.loaded(repositories: _repositories, showLoadMoreButton: _showLoadMoreButton));
        emit(SearchRepositoriesState.loadingNewItemsFinished());
        _page++;
      } catch (_) {
        emit(const SearchRepositoriesState.error());
      }
    }
  }
}
