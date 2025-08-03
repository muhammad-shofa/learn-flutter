import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  final String username;

  WelcomeCard({required this.username});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[100],
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Welcome $username, happy to see you again!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
