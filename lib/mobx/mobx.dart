import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:third/api/api.dart';
import 'package:third/main.dart';
import 'package:third/model/rep_model.dart';

part 'mobx.g.dart';

class Search = _SearchBase with _$Search;

abstract class _SearchBase with Store {
  @observable
  String keyword = '';

  @observable
  bool validate = false;

  String get textValue => keyword;
  set textValue(String text) => keyword = text;

  @action
  void validateFunc(
    TextEditingController textController,
    BuildContext context,
  ) {
    if (textController.text.isEmpty) {
      validate = true;
      return;
    } else {
      validate = false;
    }
    Navigator.pushNamed(context, '/second');
    final controllerText = textController.text;
    search.textValue = controllerText;
  }

  @action
  Future<SearchRepos> future() {
    return API().getRepos(keyword);
  }
  
}
