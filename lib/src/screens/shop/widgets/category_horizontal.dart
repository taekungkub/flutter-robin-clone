import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/constant.dart';
import 'package:flutter_application_2/src/screens/shop/widgets/card_food_category.dart';
import 'package:flutter_application_2/src/theme.dart';

class CategoryHorizontal extends StatefulWidget {
  const CategoryHorizontal({super.key});

  @override
  State<CategoryHorizontal> createState() => _CategoryHorizontalState();
}

class _CategoryHorizontalState extends State<CategoryHorizontal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: foodCategory
              .map((item) {
                return CardFoodCategory(
                    title: item['title'].toString(),
                    image: 'https://picsum.photos/id/237/200/300',
                    callback: () => {print('tab')});
              })
              .expand((widget) => [
                    widget,
                    SizedBox(
                        width: 8.0), // Adjust the width of the gap as needed
                  ])
              .toList(),
        ));
  }
}
