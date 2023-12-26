import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/screens/favorite/delivery_tab_view.dart';
import 'package:flutter_application_2/src/screens/favorite/widgets/card_favorite.dart';
import 'package:flutter_application_2/src/screens/favorite/widgets/chip_category.dart';

import 'package:flutter_application_2/src/theme.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text('Favorite'),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Align(
            child: TabBar(
                controller: _tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                enableFeedback: false,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [kPrimaryColor, kSecondaryColor]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                tabs: [
                  ChipCategory(title: 'อาหาร'),
                  ChipCategory(title: 'สั่งของ'),
                ]),
          ),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.redAccent,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      "Tab 1",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Tab 1",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPaddin),
          child: TabBarView(controller: _tabController, children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                  CardFavorite(),
                ],
              ),
            ),
            DeliveryTabView()
          ]),
        ),
      ),
    );
  }
}
