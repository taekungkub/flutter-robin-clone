import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/theme.dart';

class ChipCategory extends StatelessWidget {
  final String title;
  const ChipCategory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: kPrimaryColor, width: 1)),
      child: Align(
        alignment: Alignment.center,
        child: Text(title),
      ),
    );
  }
}
