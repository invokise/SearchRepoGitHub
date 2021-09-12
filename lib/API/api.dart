import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:third/model/rep_model.dart';

class API {
  Future<SearchRepos> getRepos(String keyword) async {
    final url =
        'https://api.github.com/search/repositories?q=$keyword&per_page=100';
    final link = Uri.parse(url);
    final response = await http.get(link);
    if (response.statusCode == 200) {
      return SearchRepos.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw Exception('Failed');
    }
  }
}
