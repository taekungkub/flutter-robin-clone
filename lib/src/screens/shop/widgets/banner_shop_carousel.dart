import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/constant.dart';
import 'package:flutter_application_2/src/theme.dart';

class BannerShopCarouSel extends StatefulWidget {
  const BannerShopCarouSel({super.key});

  @override
  State<BannerShopCarouSel> createState() => _BannerShopCarouSelState();
}

class _BannerShopCarouSelState extends State<BannerShopCarouSel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: CarouselSlider(
          options: CarouselOptions(
              aspectRatio: 2.0,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              height: 150,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imgList
              .map((item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kDefaultPaddin),
                          color: Colors.black,
                          image: new DecorationImage(
                              image: NetworkImage(item), fit: BoxFit.cover)),
                    ),
                  ))
              .toList(),
          carouselController: _controller,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : kPrimaryColor)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
