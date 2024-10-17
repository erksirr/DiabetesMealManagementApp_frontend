import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  final VoidCallback onPressed;
  const Backbutton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Container(
          width: 50, // Set the width of the circle
          height: 50, // Set the height of the circle
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(
                255, 126, 71, 1), // Background color for the circle
          ),
          padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
