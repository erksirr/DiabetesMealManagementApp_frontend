import 'package:flutter/material.dart';
import 'package:myproject/components/auth/orangebutton.dart';
import 'package:myproject/components/auth/textfield.dart';
import 'package:myproject/components/backbutton.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _comfirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Backbutton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),
        title: Text(
          'ลงทะเบียน',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Textfield(
              controller: _emailController,
              text: 'อีเมล',
            ),
            SizedBox(height: 14),
            Textfield(
              controller: _usernameController,
              text: 'ชื่อผู้ใช้',
            ),
            SizedBox(height: 14),
            Textfield(
              controller: _passwordController,
              text: 'รหัสผ่าน',
            ),
            SizedBox(height: 14),
            Textfield(
              controller: _comfirmpasswordController,
              text: 'ยืนยันรหัสผ่าน',
            ),
            SizedBox(height: 20),
            Orangebutton(
                text: 'ลงทะเบียน',
                onPressed: () {
                  if (_passwordController.text.isNotEmpty &&
                      _comfirmpasswordController.text.isNotEmpty &&
                      _usernameController.text.isNotEmpty &&
                      _emailController.text.isNotEmpty &&
                      _passwordController.text ==
                          _comfirmpasswordController.text) {
                    Navigator.pushReplacementNamed(context, '/filldetail');
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Signup Failed'),
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
            SizedBox(height: 20),
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
            )
          ],
        ),
      ),
    );
  }
}
