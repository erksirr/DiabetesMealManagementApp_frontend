import 'package:flutter/material.dart';
import 'package:myproject/page/auth/filldetails.dart';
import 'package:myproject/page/auth/firstpage.dart';
import 'package:myproject/page/auth/login.dart';
import 'package:myproject/page/auth/signup.dart';
import 'package:myproject/page/profile.dart';
import 'package:myproject/page/static/bloodsugar.dart';
import 'package:myproject/page/tips.dart';
import 'package:myproject/page/home/recommend.dart';
import 'package:myproject/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'NotoSansThai',
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary:
                Colors.white, // Ensures the primary color is applied throughout
            onPrimary: Colors
                .black, // Text and icons on primary color (white) will be black
          ),
        ),
        initialRoute: '/filldetail',
        routes: {
          '/': (context) => FirstPage(),
          '/login': (context) => LoginPage(),
          '/signup': (context) => SignupPage(),
          '/home': (context) => MainPage(),
          '/filldetail': (context) => FilldetailsPage(),
          '/test': (context) => ThaiProfileForm(),
        });
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of the page widgets, corresponding to the routes
  final List<Widget> _pages = [
    RecommendPage(),
    BloodsugarPage(),
    TipsPage(),
    ProfilePage(),
  ];

  // Function to handle navigation and bottom bar tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // No need to use Navigator here since we're managing state locally
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Dynamically display the correct page
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats),
            label: 'สถิติ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'เคล็ดลับ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'โปรไฟล์',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(255, 126, 71, 1),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'NotoSansThai',
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontFamily: 'NotoSansThai',
          fontSize: 10,
        ),
        onTap: _onItemTapped, // Handle tab selection
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
