import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/constant.dart';
import 'package:flutter_application_2/src/theme.dart';

class CardFoodNearMe extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback callback;
  const CardFoodNearMe(
      {super.key,
      required this.title,
      required this.image,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
          elevation: 4.0,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://source.unsplash.com/random/800x600?house',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LoLoremLoremLoremLoremLoremLoremLoremremLoLoremLoremLoremLoremLoremLoremLoremrem',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: kDefaultPaddin,
                    ),
                    Row(
                      children: [
                        Text("4.6 KM", style: TextStyle(color: kTextMuted)),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 17,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4.6", style: TextStyle(color: kTextMuted)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
