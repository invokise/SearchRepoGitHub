import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:third/api/github_repository_implementation.dart';
import 'package:third/api/repository/repo.dart';
import 'package:third/api/repository_interface.dart';
import 'package:third/app/my_app.dart';
import 'package:third/services/cache_service.dart';
import 'package:third/stores/github_repository_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheService.initPreference();
  GetIt.I.registerSingleton<RepositoryInterface>(
      GitHubRepositoryImplementation(dio: Dio()));
  GetIt.I.registerSingleton(GitHubRepositoryStore());
  GetIt.I.registerSingleton(Repo(
    repositoryInfterface: GetIt.I<RepositoryInterface>(),
    cacheService: CacheService(),
  ));
  runApp(const MyApp());
}
