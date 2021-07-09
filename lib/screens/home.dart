import 'package:flutter/material.dart';
import 'package:navigator_poc/navigation.dart';
import 'package:navigator_poc/screens/product_details.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: TextButton(
          child: Text('Go to product details'),
          onPressed: () {
            Navigation.goToProductDetails(
              context,
              arguments: ProductDetailsScreenArguments(
                message: 'Some message from arguments',
              ),
            );
          },
        ),
      ),
    );
  }
}
