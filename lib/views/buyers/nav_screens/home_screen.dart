import 'package:flutter/material.dart';
import 'package:multi_store_udemy/views/buyers/nav_screens/components/homescreen/banner_widget.dart';
import 'package:multi_store_udemy/views/buyers/nav_screens/components/homescreen/category_text.dart';
import 'package:multi_store_udemy/views/buyers/nav_screens/components/homescreen/navbar_home_widget.dart';
import 'package:multi_store_udemy/views/buyers/nav_screens/components/homescreen/search_home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NavbarHomeWidget(),
        SizedBox(
          height: 14,
        ),
        SearchHomeWidget(),
        BannerWidget(),
        CategoryText(),
      ],
    );
  }
}
