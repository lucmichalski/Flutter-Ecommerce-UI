import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/screens/welcome_screen.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      home: new Welcome(),
    );
  }
}