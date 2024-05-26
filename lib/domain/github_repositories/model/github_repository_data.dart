import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';

class GithubRepositoryData {
  // final int totalItems;
  final int totalPages;
  final List<GithubRepository> items;

  GithubRepositoryData({
    // required this.totalItems,
    required this.totalPages,
    required this.items,
  });
}
