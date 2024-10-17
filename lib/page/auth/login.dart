import 'package:flutter/material.dart';
import 'package:myproject/components/auth/orangebutton.dart';
import 'package:myproject/components/auth/signupwithgooglebutton.dart';
import 'package:myproject/components/auth/textfield.dart';
import 'package:myproject/components/backbutton.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Backbutton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        title: Text(
          'เข้าสู่ระบบ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email Text Field
              //Textfeild
              Textfield(
                text: "อีเมล",
                controller: _emailController,
              ),
              SizedBox(height: 14),

              // Password Text Field
              Textfield(
                text: "รหัสผ่าน",
                controller: _passwordController,
              ),
              SizedBox(height: 14),

              Orangebutton(
                  text: 'เข้าสู่ระบบ',
                  onPressed: () {
                    // Dummy authentication for now
                    if (_emailController.text == '1' &&
                        _passwordController.text == '1') {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Login Failed'),
                          content: Text('Incorrect email or password'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  }),
              SizedBox(height: 14),

              // Google Sign-In Button
              Signupwithgooglebutton(),

              SizedBox(height: 20),

              // Registration prompt
              Text(
                'ยังไม่มีบัญชีใช่ไหม',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, '/signup'); // Navigate to Sign-Up page
                },
                child: Text(
                  'ลงทะเบียนที่นี่',
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
