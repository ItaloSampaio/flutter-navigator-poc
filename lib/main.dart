import 'package:flutter/material.dart';
import 'package:navigator_poc/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.createRoutes(),
    );
  }
}
