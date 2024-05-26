// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/github_repositories/data_source/github_api_data_source.dart'
    as _i5;
import '../data/github_repositories/mapper/github_repository_dto_to_github_repository_mapper.dart'
    as _i6;
import '../data/github_repositories/mapper/owner_dto_to_owner_mapper.dart'
    as _i3;
import '../data/github_repositories/service/github_service_impl.dart' as _i8;
import '../domain/github_repositories/service/github_service.dart' as _i7;
import '../domain/github_repositories/use_case/search_repositories_use_case.dart'
    as _i9;
import '../presentation/page/search_repositories/cubit/search_repositories_cubit.dart'
    as _i10;
import 'dio_module.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.OwnerDtoToOwnerMapper>(() => _i3.OwnerDtoToOwnerMapper());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i4.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i5.GithubApiDataSource>(
        () => _i5.GithubApiDataSource(gh<_i4.Dio>()));
    gh.factory<_i6.GithubRepositoryDtoToGithubRepositoryMapper>(() =>
        _i6.GithubRepositoryDtoToGithubRepositoryMapper(
            gh<_i3.OwnerDtoToOwnerMapper>()));
    gh.lazySingleton<_i7.GithubService>(() => _i8.GithubServiceImpl(
          gh<_i5.GithubApiDataSource>(),
          gh<_i6.GithubRepositoryDtoToGithubRepositoryMapper>(),
        ));
    gh.factory<_i9.SearchRepositoriesUseCase>(
        () => _i9.SearchRepositoriesUseCase(gh<_i7.GithubService>()));
    gh.factory<_i10.SearchRepositoriesCubit>(() =>
        _i10.SearchRepositoriesCubit(gh<_i9.SearchRepositoriesUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
