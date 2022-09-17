import 'package:flutter/material.dart';
import 'package:shop_app/screens/home_page.dart';
import 'package:shop_app/screens/update_product_page.dart';
import 'package:shop_app/services/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
    );
  }
}
