import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:third/constants/text_styles.dart';
import 'package:third/pages/search_repository/widgets/search_field_widget.dart';
import 'package:third/stores/github_repository_store.dart';

class SearchRepositoryPage extends StatefulWidget {
  const SearchRepositoryPage({Key? key}) : super(key: key);

  @override
  _SearchRepositoryPageState createState() => _SearchRepositoryPageState();
}

class _SearchRepositoryPageState extends State<SearchRepositoryPage> {
  late final TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'Search Repositories',
          style: AppTextStyles.whiteBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Observer(builder: (context) {
          return SearchFieldWidget(
            onPressed: () {
              GetIt.I<GitHubRepositoryStore>().validateSearchRepostioryField(
                _textEditingController.text,
                context,
              );

              _textEditingController.clear();
            },
            onFieldSubmitted: (value) {
              GetIt.I<GitHubRepositoryStore>().isValid = true;
            },
            controller: _textEditingController,
            hintText: 'Enter name of repository',
            errorText: GetIt.I<GitHubRepositoryStore>().isValid
                ? null
                : 'Field cant be empty',
            buttonText: 'Search',
          );
        }),
      ),
    );
  }
}
