import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/constant.dart';
import 'package:flutter_application_2/src/theme.dart';

class CardCategory extends StatelessWidget {
  final String title;

  final String image;
  final VoidCallback callback;

  const CardCategory(
      {super.key,
      required this.title,
      required this.image,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPaddin),
              color: Colors.black,
              image: new DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: NetworkImage(image),
                  fit: BoxFit.cover)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
