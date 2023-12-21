import 'package:flutter/material.dart';
import 'package:third/pages/search_repository/search_repository_page.dart';
import 'package:third/pages/search_result/search_result_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SearchRepositoryPage(),
        '/second': (context) => SearchResultPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
