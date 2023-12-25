import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/constant.dart';
import 'package:flutter_application_2/src/screens/home/widgets/card_carousel.dart';
import 'package:flutter_application_2/src/screens/home/widgets/card_category.dart';
import 'package:flutter_application_2/src/screens/shop/shop_view.dart';

import 'package:flutter_application_2/src/theme.dart';
import 'package:flutter_application_2/src/widgets/page_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (2 / 1),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(imageListOne.length, (index) {
                  return GestureDetector(
                      child: CardCategory(
                    image: imageListOne[index]['image'].toString(),
                    title: imageListOne[index]['title'].toString(),
                    callback: () {
                      print('tab ${index}');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ShopView()));
                    },
                  ));
                })),
            SizedBox(
              height: kDefaultPaddin / 2,
            ),
            PageHeader(title: 'ส่วนลดเรียกรถ จองโรงแรม และเที่ยวบิน'),
            CardCarousel(),
            SizedBox(
              height: kDefaultPaddin / 2,
            ),
            PageHeader(title: 'ส่วนลดสั่งอาหาร ซื้อของ ส่งของด่วน'),
            CardCarousel(),
            PageHeader(title: 'ดีลพิเศษจากพาร์ทเนอร์'),
            CardCarousel()
          ],
        ),
      ),
    );
  }
}
