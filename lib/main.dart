import 'package:agent_listing_app/views/about_us_page.dart';
import 'package:agent_listing_app/views/agent_info_page.dart';
import 'package:agent_listing_app/views/bottom_navbar_page.dart';
import 'package:agent_listing_app/views/home_page.dart';
import 'package:agent_listing_app/views/selected_category_result.dart';
import 'package:agent_listing_app/views/vendor_card_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Agent Listing App',

      home: BottomNavBarPage(),
      // getPages: [
      //   GetPage(name: '/', page: () => Home()),
      //   GetPage(name: '/second', page: () => Second()),
      //   GetPage(name: '/third', page: () => Third()),
      //   GetPage(name: "/fourth", page: () => Fourth()),
      // ],
    );
  }
}
