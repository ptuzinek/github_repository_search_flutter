import 'package:github_repository_search_flutter/data/github_repositories/dto/owner_dto.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/owner.dart';
import 'package:injectable/injectable.dart';

@injectable
class OwnerDtoToOwnerMapper {
  Owner call(OwnerDto ownerDto) => Owner(
        login: ownerDto.login,
        avatarUrl: ownerDto.avatarUrl,
      );
}
