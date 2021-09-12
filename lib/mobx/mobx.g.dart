// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Search on _SearchBase, Store {
  final _$keywordAtom = Atom(name: '_SearchBase.keyword');

  @override
  String get keyword {
    _$keywordAtom.reportRead();
    return super.keyword;
  }

  @override
  set keyword(String value) {
    _$keywordAtom.reportWrite(value, super.keyword, () {
      super.keyword = value;
    });
  }

  final _$_SearchBaseActionController = ActionController(name: '_SearchBase');

  @override
  void setTextValue(String text) {
    final _$actionInfo = _$_SearchBaseActionController.startAction(
        name: '_SearchBase.setTextValue');
    try {
      return super.setTextValue(text);
    } finally {
      _$_SearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getTextValue() {
    final _$actionInfo = _$_SearchBaseActionController.startAction(
        name: '_SearchBase.getTextValue');
    try {
      return super.getTextValue();
    } finally {
      _$_SearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<SearchRepos> future() {
    final _$actionInfo =
        _$_SearchBaseActionController.startAction(name: '_SearchBase.future');
    try {
      return super.future();
    } finally {
      _$_SearchBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
keyword: ${keyword}
    ''';
  }
}
