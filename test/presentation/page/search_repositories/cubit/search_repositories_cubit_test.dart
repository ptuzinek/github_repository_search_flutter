import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository_data.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/owner.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/use_case/search_repositories_use_case.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/cubit/search_repositories_cubit.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/cubit/search_repositories_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_repositories_cubit_test.mocks.dart';

@GenerateMocks([
  SearchRepositoriesUseCase,
])
void main() {
  group('SearchRepositoriesCubit', () {
    late SearchRepositoriesCubit searchRepositoriesCubit;
    late SearchRepositoriesUseCase mockSearchRepositoriesUseCase;

    final githubRepositoryData1 = GithubRepositoryData(
      items: [
        GithubRepository(
          name: 'repo1',
          description: 'description1',
          owner: Owner(login: 'owner1', avatarUrl: 'avatarUrl1'),
          stars: 1,
          forks: 1,
          openIssues: 1,
          repositoryUrl: 'repositoryUrl1',
          watchersCount: 1,
        ),
      ],
      totalPages: 2,
    );

    final githubRepositoryData2 = GithubRepositoryData(
      items: [
        GithubRepository(
          name: 'repo2',
          description: 'description2',
          owner: Owner(login: 'owner2', avatarUrl: 'avatarUrl2'),
          stars: 2,
          forks: 2,
          openIssues: 2,
          repositoryUrl: 'repositoryUrl2',
          watchersCount: 2,
        ),
      ],
      totalPages: 2,
    );

    setUp(() {
      mockSearchRepositoriesUseCase = MockSearchRepositoriesUseCase();
      searchRepositoriesCubit = SearchRepositoriesCubit(mockSearchRepositoriesUseCase);
    });

    tearDown(() => searchRepositoriesCubit.close());

    test('initial state is SearchRepositoriesState.initial()', () {
      expect(searchRepositoriesCubit.state, equals(const SearchRepositoriesState.initial()));
    });

    blocTest<SearchRepositoriesCubit, SearchRepositoriesState>(
      'emits [SearchRepositoriesState.loading(), SearchRepositoriesState.loaded()] when searchRepositories is called successfully',
      setUp: () => when(mockSearchRepositoriesUseCase('query', 1)).thenAnswer((_) async => githubRepositoryData1),
      build: () => searchRepositoriesCubit,
      act: (cubit) => cubit.searchRepositories('query'),
      expect: () => [
        const SearchRepositoriesState.loading(),
        SearchRepositoriesState.loaded(
          repositories: githubRepositoryData1.items,
          showLoadMoreButton: true,
        ),
      ],
    );

    blocTest<SearchRepositoriesCubit, SearchRepositoriesState>(
      'emits [SearchRepositoriesState.loading(), SearchRepositoriesState.loaded()] when loadMoreRepositories is called successfully',
      setUp: () {
        when(mockSearchRepositoriesUseCase('query', 1)).thenAnswer((_) async => githubRepositoryData1);
        when(mockSearchRepositoriesUseCase('query', 2)).thenAnswer((_) async => githubRepositoryData2);
      },
      build: () => searchRepositoriesCubit,
      act: (cubit) async {
        await cubit.searchRepositories('query');
        await cubit.loadMoreRepositories();
      },
      expect: () => [
        const SearchRepositoriesState.loading(),
        SearchRepositoriesState.loaded(
          repositories: [githubRepositoryData1.items.first],
          showLoadMoreButton: true,
        ),
        const SearchRepositoriesState.loadingNewItems(),
        SearchRepositoriesState.loaded(
          repositories: [githubRepositoryData1.items.first, githubRepositoryData2.items.first],
          showLoadMoreButton: false,
        ),
        const SearchRepositoriesState.loadingNewItemsFinished(),
      ],
    );

    blocTest<SearchRepositoriesCubit, SearchRepositoriesState>(
      'emits [SearchRepositoriesState.loading(), SearchRepositoriesState.loaded()] when searchRepositories is called with empty query',
      build: () => searchRepositoriesCubit,
      act: (cubit) => cubit.searchRepositories(''),
      expect: () => [
        const SearchRepositoriesState.loading(),
        const SearchRepositoriesState.loaded(repositories: [], showLoadMoreButton: false),
      ],
    );

    blocTest<SearchRepositoriesCubit, SearchRepositoriesState>(
      'emits [SearchRepositoriesState.loading(), SearchRepositoriesState.error()] when searchRepositories throws an error',
      setUp: () => when(mockSearchRepositoriesUseCase('query', 1)).thenThrow(Exception()),
      build: () => searchRepositoriesCubit,
      act: (cubit) => cubit.searchRepositories('query'),
      expect: () => [
        const SearchRepositoriesState.loading(),
        const SearchRepositoriesState.error(),
      ],
    );

    blocTest<SearchRepositoriesCubit, SearchRepositoriesState>(
      'emits [SearchRepositoriesState.loadingNewItems(), SearchRepositoriesState.error()] when loadMoreRepositories throws an error',
      setUp: () {
        when(mockSearchRepositoriesUseCase('query', 1)).thenAnswer((_) async => githubRepositoryData1);
        when(mockSearchRepositoriesUseCase('query', 2)).thenThrow(Exception());
      },
      build: () => searchRepositoriesCubit,
      act: (cubit) async {
        await cubit.searchRepositories('query');
        await cubit.loadMoreRepositories();
      },
      expect: () => [
        const SearchRepositoriesState.loading(),
        SearchRepositoriesState.loaded(
          repositories: [githubRepositoryData1.items.first],
          showLoadMoreButton: true,
        ),
        const SearchRepositoriesState.loadingNewItems(),
        const SearchRepositoriesState.error(),
      ],
    );
  });
}
