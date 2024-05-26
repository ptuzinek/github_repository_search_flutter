import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repository_dto.dart';

part 'github_repositories_response_dto.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class GithubRepositoriesResponseDto {
  final List<GithubRepositoryDto> items;

  GithubRepositoriesResponseDto({
    required this.items,
  });

  factory GithubRepositoriesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GithubRepositoriesResponseDtoFromJson(json);
}
