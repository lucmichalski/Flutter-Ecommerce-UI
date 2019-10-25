import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/screens/home_screen.dart';
import 'package:flutter_ecommerce_app_ui/screens/product_screen.dart';
import 'package:flutter_ecommerce_app_ui/screens/welcome_screen.dart';

void main() => runApp(ShopApp());

const WelcomeRoute = '/';
const HomeRoute = '/home';
const ProductDetailRoute = '/product';

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFF202020),
      ),
      onGenerateRoute: _routes(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case WelcomeRoute:
          screen = Welcome();
          break;
        case HomeRoute:
          screen = Home();
          break;
        case ProductDetailRoute:
          screen = Product(arguments['id'], arguments['name'], arguments['subTitle'], arguments['price'], arguments['image'], arguments['description']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}