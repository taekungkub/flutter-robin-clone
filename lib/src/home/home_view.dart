import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/home/body/body.dart';
import 'package:flutter_application_2/src/home/home_controller.dart';
import 'package:flutter_application_2/src/theme.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

final homeController = HomeController();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Hello',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              width: kDefaultPaddin / 2,
            ),
            Text('Kieattisak')
          ],
        ),
      ),
      body: Body(),
    );
  }
}
