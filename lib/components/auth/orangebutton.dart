import 'package:flutter/material.dart';

class Orangebutton extends StatelessWidget {
  final String text; // Text to display on the button
  final VoidCallback onPressed; // Callback function for the button press

  const Orangebutton({
    Key? key,
    required this.text, // Marked as required
    required this.onPressed, // Marked as required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Call the passed function
      child: Text(
        text, // Use the passed text
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 126, 71, 1),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
