import 'package:flutter/material.dart';
import 'package:third/constants/text_styles.dart';
import 'package:third/main.dart';
import 'package:third/model/rep_model.dart';
import 'package:third/services/date_time_service.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'РЕЗУЛЬТАТ ПОИСКА',
          style: AppTextStyles.blackText23,
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 1,
      ),
      body: const Result(),
    );
  }
}

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SearchRepos>(
      future: search.future(),
      builder: (context, snapshot) {
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'По запросу:',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      search.keyword,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'НАЙДЕНО:  ${snapshot.hasData ? snapshot.data!.totalCount.toString() : 0.toString()}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ContentWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ContentWidget extends StatefulWidget {
  const ContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  final futureResult = search.future();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SearchRepos>(
      future: futureResult,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: snapshot.data!.items!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 140,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    snapshot.data!.items![index].name
                                        .toString(),
                                    style: AppTextStyles.blackBold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(snapshot
                                            .data!
                                            .items![index]
                                            .owner!
                                            .avatarUrl
                                            .toString()),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        snapshot
                                            .data!.items![index].owner!.login
                                            .toString(),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    DateTimeService.formatDate(
                                      snapshot.data!.items![index].updatedAt
                                          .toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Positioned(
                        left: 63,
                        right: 63,
                        child: Divider(
                          color: Colors.grey,
                          height: 180,
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 42,
                        child: Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              top: 4,
                              left: 2,
                              child: InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.star_border_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      snapshot
                                          .data!.items![index].stargazersCount
                                          .toString(),
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
