import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/theme.dart';

class CardFoodCategory extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback callback;
  const CardFoodCategory(
      {super.key,
      required this.title,
      required this.image,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(
            height: kDefaultPaddin / 2,
          ),
          Center(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
