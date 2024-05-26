import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/utils/core_cubit.dart';

part 'search_repositories_state.freezed.dart';

@freezed
class SearchRepositoriesState with _$SearchRepositoriesState {
  @Implements<StateBuilder>()
  const factory SearchRepositoriesState.initial() = SearchRepositoriesStateInitial;

  @Implements<StateBuilder>()
  const factory SearchRepositoriesState.loading() = SearchRepositoriesStateLoading;

  @Implements<StateBuilder>()
  const factory SearchRepositoriesState.loaded({
    required List<GithubRepository> repositories,
    required bool showLoadMoreButton,
  }) = SearchRepositoriesStateLoaded;

  @Implements<StateBuilder>()
  const factory SearchRepositoriesState.error([String? message]) = SearchRepositoriesStateError;

  @Implements<StateListener>()
  const factory SearchRepositoriesState.loadingNewItems() = SearchRepositoriesStateLoadingNewItems;

  @Implements<StateListener>()
  const factory SearchRepositoriesState.loadingNewItemsFinished() = SearchRepositoriesStateLoadingNewItemsFinished;
}
