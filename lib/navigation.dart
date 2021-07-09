import 'package:flutter/material.dart';
import 'package:navigator_poc/screens/screens.dart';

class Navigation {
  Navigation._();

  static goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  static goToHome(BuildContext context) {
    Navigator.of(context).pushNamed(HomeScreen.routeName);
  }

  static goToProductDetails(
    BuildContext context, {
    required ProductDetailsScreenArguments arguments,
  }) {
    Navigator.of(context).pushNamed(
      ProductDetailsScreen.routeName,
      arguments: arguments,
    );
  }

  static goToProfile(
    BuildContext context, {
    required ProfileScreenArguments arguments,
  }) {
    Navigator.of(context).pushNamed(
      ProfileScreen.routeName,
      arguments: arguments,
    );
  }
}
