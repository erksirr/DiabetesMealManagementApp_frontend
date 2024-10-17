import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myproject/components/auth/orangebutton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Orangebutton(
          text: 'ออกจากระบบ',
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          }),
    );
  }
}
