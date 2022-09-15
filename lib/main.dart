import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v3_desktop/pages/home_page.dart';
import 'package:v3_desktop/pages/item_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'V3 Desktop',
      routes: {
        "/itemDetailPage" : (context) => ItemDetailPage(),
      },
      home: HomePage(),
    );
  }
}
