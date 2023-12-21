import 'package:flutter/material.dart';
import 'package:third/services/date_time_service.dart';

class GitHubRepositoryCardWidget extends StatelessWidget {
  const GitHubRepositoryCardWidget({
    super.key,
    required this.title,
    required this.stars,
    required this.image,
    required this.userName,
    required this.date,
  });
  final String title;
  final int stars;
  final String image;
  final String userName;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(stars.toString()),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image),
              ),
              SizedBox(
                width: 10,
              ),
              Text(userName),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          Text(
            DateTimeService.formatDate(date),
          ),
        ],
      ),
    );
  }
}
