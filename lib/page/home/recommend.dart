import 'package:flutter/material.dart';

class RecommendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าหลัก - Recommend'),
      ),
      body: Center(
        child: Text(
          'This is the Recommend Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}