import 'package:flutter/material.dart';

class DeliveryTabView extends StatefulWidget {
  const DeliveryTabView({super.key});

  @override
  State<DeliveryTabView> createState() => _DeliveryTabViewState();
}

class _DeliveryTabViewState extends State<DeliveryTabView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(('init tab'));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        ('ไม่มีรายการที่บันทึกไว้ในขณะนี้'),
      ),
    );
  }
}
