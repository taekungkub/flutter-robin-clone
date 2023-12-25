import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/theme.dart';

class ShopDetailView extends StatefulWidget {
  const ShopDetailView({super.key});

  @override
  State<ShopDetailView> createState() => _ShopDetailViewState();
}

class _ShopDetailViewState extends State<ShopDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('asd')),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Column(
          children: [Text('Shop Detail')],
        ),
      ),
    );
  }
}
