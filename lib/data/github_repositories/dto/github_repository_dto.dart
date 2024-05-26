import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_search_flutter/data/github_repositories/dto/owner_dto.dart';

part 'github_repository_dto.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class GithubRepositoryDto {
  final String name;
  final OwnerDto owner;
  final String? description;
  final int? stargazersCount;
  final int? forks;
  final int? openIssues;
  final String htmlUrl;
  final int watchersCount;

  GithubRepositoryDto({
    required this.name,
    required this.description,
    required this.owner,
    required this.stargazersCount,
    required this.forks,
    required this.openIssues,
    required this.htmlUrl,
    required this.watchersCount,
  });

  factory GithubRepositoryDto.fromJson(Map<String, dynamic> json) => _$GithubRepositoryDtoFromJson(json);
}
