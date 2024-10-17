import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String text; // Text to display on the button
  final TextEditingController
      controller; // Callback function for the button press
  const Textfield({
    Key? key,
    required this.text, // Marked as required
    required this.controller, // Marked as required
  }) : super(key: key); // Marked as required});

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: Builder(builder: (BuildContext context) {
        final isFocused = Focus.of(context).hasFocus;
        return TextField(
          controller: controller,
          cursorColor: Colors.black,
          style: TextStyle(
            color: isFocused
                ? Color.fromRGBO(255, 126, 71, 1) // Orange when focused
                : Colors.black, // Default color when not focused
            fontSize: 16,
          ),
          decoration: InputDecoration(
              labelText: text,
              labelStyle: TextStyle(
                  color: Color.fromRGBO(255, 126, 71, 1), fontSize: 14),
              fillColor: Color.fromRGBO(255, 243, 237, 1),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0)),
        );
      }),
    );
  }
}
