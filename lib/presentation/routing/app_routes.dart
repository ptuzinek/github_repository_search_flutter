enum AppRoutes {
  searchRepositories(
    '/',
    'searchRepositories',
  ),
  repositoryDetails(
    '/repositoryDetails',
    'repositoryDetails',
  );

  final String path;
  final String name;

  const AppRoutes(
    this.path,
    this.name,
  );
}
