import 'package:flutter/material.dart';

class AnotherCard extends StatelessWidget {
  final String message;

  AnotherCard({required this.message});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.green, width: 5),
        borderRadius: BorderRadius.circular(50)
      ),
      child: Padding(padding: EdgeInsets.all(16), child: Text("$message ")),
    );
  }
}
