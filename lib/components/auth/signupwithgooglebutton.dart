import 'package:flutter/material.dart';

class Signupwithgooglebutton extends StatelessWidget {
  const Signupwithgooglebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, "/login");
      },
      // icon: Image.asset(
      //   'assets/google_logo.png', // Ensure the Google logo is in assets
      //   height: 24,
      //   width: 24,
      // ),
      child: Text('ลงทะเบียนด้วย Google',
          style: TextStyle(color: Colors.black, fontSize: 16)),
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.grey),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
