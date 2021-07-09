import 'package:flutter/material.dart';
import 'package:navigator_poc/navigation.dart';

class ProfileScreenArguments {
  final String message;

  ProfileScreenArguments({required this.message});
}

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  final String _message;

  ProfileScreen._({
    required String message,
  }) : _message = message;

  factory ProfileScreen.fromArguments(ProfileScreenArguments arguments) {
    return ProfileScreen._(message: arguments.message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_message),
            TextButton(
              child: Text('Go back'),
              onPressed: () => Navigation.goBack(context),
            ),
          ],
        ),
      ),
    );
  }
}
