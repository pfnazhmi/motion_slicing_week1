import 'package:flutter/material.dart';
import 'package:pahalafawwaz_motion_intern_week1/product_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ProductDetailPage());
  }
}
