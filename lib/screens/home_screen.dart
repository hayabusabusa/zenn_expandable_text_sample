import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black.withOpacity(0.4),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text(
          '📝  Flutter でボタンを押すと伸縮する Text を作る',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}