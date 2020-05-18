import 'package:ecommerce/screens/homepage.dart';
import 'package:ecommerce/screens/product_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        primaryColor: Colors.redAccent,
      ),
      initialRoute: HomePage.id,
      routes: {
        ProductDetails.id: (context) => ProductDetails(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
