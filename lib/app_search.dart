import 'package:flutter/material.dart';
import 'package:third/resourses/text_styles.dart';

class AppSearch extends StatefulWidget {
  const AppSearch({Key? key}) : super(key: key);

  @override
  _AppSearchState createState() => _AppSearchState();
}

class _AppSearchState extends State<AppSearch> {
final textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'ПОИСК',
            style: AppTextStyles.blackBold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Stack(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Positioned(
              right: 4,
              top: 5,
              bottom: 5,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                onPressed: () {Navigator.pushNamed(context, '/third');},
                child: const Text(
                  'Найти',
                  style: AppTextStyles.text16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

