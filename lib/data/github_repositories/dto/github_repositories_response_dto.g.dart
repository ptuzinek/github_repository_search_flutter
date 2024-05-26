// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repositories_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepositoriesResponseDto _$GithubRepositoriesResponseDtoFromJson(
        Map<String, dynamic> json) =>
    GithubRepositoriesResponseDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => GithubRepositoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
