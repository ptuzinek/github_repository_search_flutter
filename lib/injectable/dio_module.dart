import 'package:dio/dio.dart';
import 'package:github_repository_search_flutter/utils/api_endpoints.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => ApiEndpoints.baseUrl;

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));
}
