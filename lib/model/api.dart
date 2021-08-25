import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:third/model/link_constants.dart';
import 'package:third/model/rep_model.dart';

class API {
  Future<SearchRepos> getRepos() async {
    final link = Uri.parse(Links.url);
    final response = await http.get(link);
    if (response.statusCode == 200) {
      return SearchRepos.fromJson(jsonDecode(response.body) as Map<String,dynamic>);
    } else {
      throw Exception('Failed');
    }
  }
}
