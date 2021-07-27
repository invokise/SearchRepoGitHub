import 'package:flutter/material.dart';
import 'package:third/resourses/text_styles.dart';

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
        backgroundColor: Colors.white,
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
                '"ghj"',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          const Center(
            child: Text(
              'НАЙДЕНО: 697',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ContentWidget(
            title: 'ghJSON',
            pathImage: 'assets/images/gg.jpg',
            name: 'Mathrioshka',
            updated: 'Обновлено: 4 ноября',
            followers: '8',
          ),
          const ContentWidget(
            title: 'bbb',
            pathImage: 'assets/images/gg.jpg',
            name: 'laosijiiandlaosijii',
            updated: 'Обновлено: 22 октября',
            followers: '0',
          ),
          const ContentWidget(
            title: 'testintegrastion',
            pathImage: 'assets/images/gg.jpg',
            name: 'TobiasTOPdesk',
            updated: 'Обновлено: 18 октября',
            followers: '0',
          ),
          const ContentWidget(
            title: 'tfgfh',
            pathImage: 'assets/images/gg.jpg',
            name: 'vikasbaliyan',
            updated: 'Обновлено: 9 января',
            followers: '0',
          ),
        ],
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  final String title;
  final String name;
  final String pathImage;
  final String updated;
  final String followers;

  const ContentWidget({
    required this.title,
    required this.name,
    required this.pathImage,
    required this.updated,
    required this.followers,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      title,
                      style: AppTextStyles.blackBold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: Image.asset(pathImage).image,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(name),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(updated),
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
              height: 177,
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
                          followers,
                          // ignore: prefer_const_constructors
                          style: TextStyle(color: Colors.white),
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
  }
}
