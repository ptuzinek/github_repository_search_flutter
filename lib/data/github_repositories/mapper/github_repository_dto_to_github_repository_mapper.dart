import 'package:github_repository_search_flutter/data/github_repositories/dto/github_repository_dto.dart';
import 'package:github_repository_search_flutter/data/github_repositories/mapper/owner_dto_to_owner_mapper.dart';
import 'package:github_repository_search_flutter/domain/github_repositories/model/github_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GithubRepositoryDtoToGithubRepositoryMapper {
  final OwnerDtoToOwnerMapper _ownerMapper;

  const GithubRepositoryDtoToGithubRepositoryMapper(this._ownerMapper);

  GithubRepository call(GithubRepositoryDto dto) => GithubRepository(
        name: dto.name,
        description: dto.description,
        owner: _ownerMapper(dto.owner),
        stars: dto.stargazersCount,
        forks: dto.forks,
        openIssues: dto.openIssues,
        repositoryUrl: dto.htmlUrl,
        watchersCount: dto.watchersCount,
      );
}
