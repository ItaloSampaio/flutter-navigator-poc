import 'package:flutter/material.dart';
import 'package:navigator_poc/screens/screens.dart';

class Routes {
  Routes._();

  static RouteFactory createRoutes() {
    return (settings) {
      return MaterialPageRoute(builder: (context) => _buildScreen(settings));
    };
  }

  static Widget _buildScreen(RouteSettings settings) {
    if (settings.name == HomeScreen.routeName) {
      return HomeScreen();
    }

    if (settings.name == ProductDetailsScreen.routeName &&
        settings.arguments is ProductDetailsScreenArguments) {
      return ProductDetailsScreen.fromArguments(
        settings.arguments as ProductDetailsScreenArguments,
      );
    }

    if (settings.name == ProfileScreen.routeName &&
        settings.arguments is ProfileScreenArguments) {
      return ProfileScreen.fromArguments(
        settings.arguments as ProfileScreenArguments,
      );
    }

    return NotFoundScreen();
  }
}
