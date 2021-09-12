import 'package:mobx/mobx.dart';
import 'package:third/api/api.dart';
import 'package:third/model/rep_model.dart';
part 'mobx.g.dart';

class Search = _SearchBase with _$Search;

abstract class _SearchBase with Store {
  @observable
  String keyword = 'q';

  @action
  void setTextValue(String text) {
    keyword = text;
  }

  @action
  String getTextValue() {
    return keyword;
  }

  @action
  Future<SearchRepos> future() {
    return API().getRepos(keyword);
  }
}
