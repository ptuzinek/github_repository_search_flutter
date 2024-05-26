import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:github_repository_search_flutter/presentation/page/repository_details/repository_details_page.dart';
import 'package:github_repository_search_flutter/presentation/page/search_repositories/search_repositories_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'searchRepositories',
      builder: (context, state) => const SearchRepositoriesPage(),
    ),
    GoRoute(
      path: '/repositoryDetails',
      name: 'repositoryDetails',
      builder: (_, state) => RepositoryDetailsPage(repository: state.extra! as GithubRepository),
    ),
  ],
);
