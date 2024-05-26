import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_dto.g.dart';

@JsonSerializable(
  createToJson: false,
  fieldRename: FieldRename.snake,
)
class OwnerDto {
  final String login;
  final String? avatarUrl;

  OwnerDto({
    required this.login,
    required this.avatarUrl,
  });

  factory OwnerDto.fromJson(Map<String, dynamic> json) => _$OwnerDtoFromJson(json);
}
