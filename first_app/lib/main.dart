// ignore_for_file: use_key_in_widget_constructors

import 'package:first_app/components/another_card.dart';
import 'package:flutter/material.dart';
import 'components/welcome_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Watashi no Flutter APP', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello world')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WelcomeCard(username: 'Andreas'),
          AnotherCard(message: 'Hello from another universe!')
        ],
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text('Watashi no Flutter APP')),
  //     body: Center(child: WelcomeCard(username: 'Andreas')),
  //   );
  // }
}
