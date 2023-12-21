import 'package:flutter/material.dart';

class SearchInfoWidget extends StatelessWidget {
  const SearchInfoWidget({
    Key? key,
    required this.searchText,
    required this.repositoryCount,
  }) : super(key: key);
  final String searchText;
  final int repositoryCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Request:',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                searchText,
                style: const TextStyle(color: Colors.blue),
              ),
            ],
          ),
          Text(
            'Founded: $repositoryCount',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
