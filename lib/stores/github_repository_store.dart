import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:third/api/repository/repo.dart';
import 'package:third/models/repository_model.dart';

part 'github_repository_store.g.dart';

class GitHubRepositoryStore = _GitHubRepositoryStoreBase
    with _$GitHubRepositoryStore;

abstract class _GitHubRepositoryStoreBase with Store {
  @observable
  bool _isValid = true;

  @observable
  bool _isLoading = false;

  @observable
  Repository? repository;

  @computed
  bool get isLoading => _isLoading;

  @computed
  bool get isValid => _isValid;

  @computed
  set isValid(bool isValid) => _isValid = isValid;

  @action
  Future<void> validateSearchRepostioryField(
    String text,
    BuildContext context,
  ) async {
    if (text.isEmpty) {
      _isValid = false;
      return;
    } else {
      _isValid = true;
      _isLoading = true;
      _getRepositories(text).whenComplete(() => _isLoading = false);
      Navigator.pushNamed(
        context,
        '/second',
        arguments: {
          'stringSearchText': text,
        },
      );
    }
  }

  @action
  Future<void> _getRepositories(String keyword) async {
    repository = await GetIt.I<Repo>().getRepositories(keyword);
  }
}
