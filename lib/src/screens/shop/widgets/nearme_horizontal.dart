import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/constant.dart';
import 'package:flutter_application_2/src/screens/shop/widgets/card_food_near_me.dart';

class NearmeHorizontal extends StatefulWidget {
  const NearmeHorizontal({super.key});

  @override
  State<NearmeHorizontal> createState() => _NearmeHorizontalState();
}

class _NearmeHorizontalState extends State<NearmeHorizontal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // use whichever suits your need

          crossAxisAlignment: CrossAxisAlignment.start,
          children: shopNearMeList.map((item) {
            return CardFoodNearMe(
                title: item['title'].toString(),
                image: 'https://picsum.photos/id/237/200/300',
                callback: () => {print('tab')});
          }).toList(),
        ));
  }
}
