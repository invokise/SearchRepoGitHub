// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GitHubRepositoryStore on _GitHubRepositoryStoreBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_GitHubRepositoryStoreBase.isLoading'))
          .value;
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_GitHubRepositoryStoreBase.isValid'))
      .value;

  late final _$_isValidAtom =
      Atom(name: '_GitHubRepositoryStoreBase._isValid', context: context);

  @override
  bool get _isValid {
    _$_isValidAtom.reportRead();
    return super._isValid;
  }

  @override
  set _isValid(bool value) {
    _$_isValidAtom.reportWrite(value, super._isValid, () {
      super._isValid = value;
    });
  }

  late final _$_isLoadingAtom =
      Atom(name: '_GitHubRepositoryStoreBase._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$repositoryAtom =
      Atom(name: '_GitHubRepositoryStoreBase.repository', context: context);

  @override
  Repository? get repository {
    _$repositoryAtom.reportRead();
    return super.repository;
  }

  @override
  set repository(Repository? value) {
    _$repositoryAtom.reportWrite(value, super.repository, () {
      super.repository = value;
    });
  }

  late final _$validateSearchRepostioryFieldAsyncAction = AsyncAction(
      '_GitHubRepositoryStoreBase.validateSearchRepostioryField',
      context: context);

  @override
  Future<void> validateSearchRepostioryField(
      String text, BuildContext context) {
    return _$validateSearchRepostioryFieldAsyncAction
        .run(() => super.validateSearchRepostioryField(text, context));
  }

  late final _$_getRepositoriesAsyncAction = AsyncAction(
      '_GitHubRepositoryStoreBase._getRepositories',
      context: context);

  @override
  Future<void> _getRepositories(String keyword) {
    return _$_getRepositoriesAsyncAction
        .run(() => super._getRepositories(keyword));
  }

  @override
  String toString() {
    return '''
repository: ${repository},
isLoading: ${isLoading},
isValid: ${isValid}
    ''';
  }
}
