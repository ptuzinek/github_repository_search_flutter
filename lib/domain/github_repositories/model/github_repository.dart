import 'package:equatable/equatable.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/owner.dart';

class GithubRepository extends Equatable {
  final String name;
  final String? description;
  final Owner owner;
  final int? stars;
  final int? forks;
  final int? openIssues;
  final String repositoryUrl;
  final int watchersCount;

  const GithubRepository({
    required this.name,
    required this.description,
    required this.owner,
    required this.stars,
    required this.forks,
    required this.openIssues,
    required this.repositoryUrl,
    required this.watchersCount,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        owner,
        stars,
        forks,
        openIssues,
        repositoryUrl,
        watchersCount,
      ];
}
