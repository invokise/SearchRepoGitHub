import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:third/constants/text_styles.dart';
import 'package:third/pages/search_result/widgets/github_repository_card_widget.dart';
import 'package:third/pages/search_result/widgets/search_info_widget.dart';
import 'package:third/stores/github_repository_store.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  String? searchText;
  @override
  void didChangeDependencies() {
    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    searchText = args['stringSearchText'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search Result',
          style: AppTextStyles.whiteBold,
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 1,
      ),
      body: Observer(builder: (context) {
        final repository = GetIt.I<GitHubRepositoryStore>().repository;
        return Column(
          children: [
            SearchInfoWidget(
              searchText: searchText ?? '',
              repositoryCount: repository?.totalCount ?? 0,
            ),
            SizedBox(
              height: 15,
            ),
            GetIt.I<GitHubRepositoryStore>().isLoading
                ? Expanded(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListView.separated(
                        itemCount: repository?.items?.length ?? 0,
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        itemBuilder: (context, index) {
                          if (repository?.totalCount == null) {
                            return Center(
                              child: Text('No data!'),
                            );
                          } else {
                            return GitHubRepositoryCardWidget(
                              title: repository!.items![index].name!,
                              stars: repository.items![index].stargazersCount!,
                              image: repository.items![index].owner!.avatarUrl!,
                              userName: repository.items![index].owner!.login!,
                              date: repository.items![index].updatedAt!,
                            );
                          }
                        },
                      ),
                    ),
                  ),
          ],
        );
      }),
    );
  }
}
