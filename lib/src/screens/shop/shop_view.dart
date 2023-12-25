import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/screens/shop/widgets/banner_shop_carousel.dart';
import 'package:flutter_application_2/src/theme.dart';
import 'package:flutter_application_2/src/widgets/page_header.dart';

class ShopView extends StatefulWidget {
  static const routeName = '/shop';
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('asd')),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerShopCarouSel(),
            PageHeader(title: 'เลือกอาหารที่คุณชอบ'),
          ],
        ),
      ),
    );
  }
}
