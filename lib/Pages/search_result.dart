import 'package:flutter/material.dart';
import 'package:third/API/api.dart';
import 'package:third/constants/text_styles.dart';
import 'package:third/model/rep_model.dart';



class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'РЕЗУЛЬТАТ ПОИСКА',
            style: AppTextStyles.blackText23,
          ),
        ),
        backgroundColor: Colors.red,
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
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'ПО ЗАПРОСУ:',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'q',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            const Center(
              child: Text(
                'НАЙДЕНО: 5',
                style: TextStyle(color: Colors.grey),
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
  final searchRepos = API().getRepos('q');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SearchRepos>(
      future: searchRepos,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data != null ? snapshot.data!.totalCount : 0,
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
                              Text(
                                snapshot.data!.items![index].name.toString(),
                                style: AppTextStyles.blackBold,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: Image.asset(snapshot.data!
                                            .items![index].owner!.avatarUrl
                                            .toString())
                                        .image,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    snapshot.data!.items![index].owner!.login
                                        .toString(),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Text(snapshot.data!.items![index].updatedAt
                                  .toString()),
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
                      top: 15,
                      right: 45,
                      child: Stack(
                        children: [
                          Container(
                            height: 28,
                            width: 52,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey,
                            ),
                          ),
                          Positioned(
                            top: 2,
                            left: 5,
                            child: InkWell(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    snapshot.data!.items![index].stargazersCount
                                        .toString(),
                                    style: const TextStyle(color: Colors.white),
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
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
