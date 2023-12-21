import 'dart:convert';

import 'package:third/api/repository_interface.dart';
import 'package:third/models/repository_model.dart';
import 'package:third/services/cache_service.dart';

class Repo {
  final RepositoryInterface repositoryInfterface;
  final CacheService cacheService;

  Repo({required this.repositoryInfterface, required this.cacheService});

  Future<Repository> getRepositories(String keyword) async {
    late Repository repositories;
    try {
      repositories = await repositoryInfterface.getRepositories(keyword);

      cacheService.saveGitHubRepositories(jsonEncode(repositories));
    } catch (e) {
      repositories = await cacheService.getGitHubRepositories();
    }

    return repositories;
  }
}
