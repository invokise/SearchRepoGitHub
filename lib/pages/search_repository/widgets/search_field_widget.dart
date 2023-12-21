import 'package:flutter/material.dart';
import 'package:third/constants/text_styles.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    required this.onPressed,
    required this.onFieldSubmitted,
    required this.controller,
    required this.hintText,
    required this.errorText,
    required this.buttonText,
  });

  final void Function() onPressed;
  final Function(String) onFieldSubmitted;
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size.zero),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              ),
              backgroundColor:
                  MaterialStateProperty.all(Colors.deepPurpleAccent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: AppTextStyles.white16,
            ),
          ),
        ),
        hintText: hintText,
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
          borderRadius: BorderRadius.circular(30),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pink),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
