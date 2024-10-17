import 'package:flutter/material.dart';
import 'package:myproject/components/auth/orangebutton.dart';
import 'package:myproject/components/auth/signupwithgooglebutton.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 44.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title and Subtitle
              Text(
                'Sugar Plan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'วางแผนและแนะนำอาหาร\nสำหรับผู้ป่วยเบาหวาน',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20),

              // Illustration Image
              Image.asset(
                'asset/im/firstpage.png', // Place the image asset in the 'assets' folder.
                height: 200,
              ),

              SizedBox(height: 30),

              // Google Sign-In Button
              Signupwithgooglebutton(),

              SizedBox(height: 14),

              // Email Registration Button
              Orangebutton(
                text: 'ลงทะเบียนด้วย email',
                onPressed: () {
                  // Navigate to login page
                },
              ),

              SizedBox(height: 20),

              // Already have an account? Sign in
              Text(
                'มีบัญชีอยู่แล้วใช่ไหม',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text(
                  'เข้าสู่ระบบที่นี่',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(255, 126, 71, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
