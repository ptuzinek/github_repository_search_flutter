// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepositoryDto _$GithubRepositoryDtoFromJson(Map<String, dynamic> json) =>
    GithubRepositoryDto(
      name: json['name'] as String,
      description: json['description'] as String?,
      owner: OwnerDto.fromJson(json['owner'] as Map<String, dynamic>),
      stargazersCount: json['stargazers_count'] as int?,
      forks: json['forks'] as int?,
      openIssues: json['open_issues'] as int?,
      htmlUrl: json['html_url'] as String,
      watchersCount: json['watchers_count'] as int,
    );
