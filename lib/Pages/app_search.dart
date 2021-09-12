import 'package:flutter/material.dart';
import 'package:third/constants/text_styles.dart';
import 'package:third/main.dart';

class AppSearch extends StatefulWidget {
  const AppSearch({Key? key}) : super(key: key);

  @override
  _AppSearchState createState() => _AppSearchState();
}

class _AppSearchState extends State<AppSearch> {
  TextEditingController textController = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
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
                labelText: 'Enter the repository',
                errorText: _validate ? 'Field cant be empty' : null,
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),

                ),
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
                onPressed: () {
                  setState(() {
                    if (textController.text.isEmpty) {
                      _validate = true;
                      return;
                    } else {
                      _validate = false;
                    }

                    Navigator.pushNamed(context, '/second');
                    final controllerText = textController.text;
                    search.setTextValue(controllerText);
                  });
                },
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
