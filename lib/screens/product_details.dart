import 'package:flutter/material.dart';
import 'package:navigator_poc/screens/screens.dart';

import '../navigation.dart';

class ProductDetailsScreenArguments {
  final String message;

  ProductDetailsScreenArguments({required this.message});
}

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product_details';

  final String _message;

  ProductDetailsScreen._({
    required String message,
  }) : _message = message;

  factory ProductDetailsScreen.fromArguments(
      ProductDetailsScreenArguments arguments) {
    return ProductDetailsScreen._(message: arguments.message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_message),
            TextButton(
              child: Text('Go to profile'),
              onPressed: () => Navigation.goToProfile(
                context,
                arguments: ProfileScreenArguments(
                  message: 'Other message from arguments',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
