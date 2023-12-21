import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:third/constants/sp_keys.dart';
import 'package:third/models/repository_model.dart';

class CacheService {
  static late SharedPreferences preference;

  static Future<void> initPreference() async {
    preference = await SharedPreferences.getInstance();
  }

  static bool haveNotData() {
    try {
      return preference.getString(SPKeys.githubRepositoryKey)!.isEmpty;
    } catch (e) {
      return true;
    }
  }

  Future<void> saveGitHubRepositories(String repository) async {
    await preference.setString(SPKeys.githubRepositoryKey, repository);
  }

  Future<Repository> getGitHubRepositories() async {
    final repository = preference.getString(SPKeys.githubRepositoryKey) ?? '';

    return Repository.fromJson(jsonDecode(repository));
  }
}
