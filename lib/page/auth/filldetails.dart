import 'package:flutter/material.dart';
import 'package:myproject/components/auth/orangebutton.dart';
import 'package:myproject/components/auth/textfield.dart';
import 'package:myproject/components/backbutton.dart';

class FilldetailsPage extends StatelessWidget {
  final TextEditingController _birthdateController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _congenitaldiseaseController =
      TextEditingController();
  final TextEditingController _foodallergyController = TextEditingController();
  String selectedGender = 'ชาย'; // Default gender
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Ensures content fits inside the height
            children: [
              Text(
                'ยินดีต้อนรับสู่ Sugar Plan!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'กรุณาบอกเราเกี่ยวกับตัวคุณสักนิด',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Date of birth input
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('วันเดือนปีเกิด'),
                            SizedBox(height: 5),
                            Textfield(
                              controller: _birthdateController,
                              text: 'วว/ดด/ปป',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16), // Spacer between columns
                      // Gender dropdown
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('เพศสภาพ'),
                            SizedBox(height: 5),
                            DropdownButtonFormField<String>(
                              value: selectedGender,
                              onChanged: (newValue) {
                                // Update gender selection
                              },
                              items: ['ชาย', 'หญิง']
                                  .map((gender) => DropdownMenuItem(
                                        value: gender,
                                        child: Text(
                                          gender,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 126, 71, 1),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ))
                                  .toList(),
                              decoration: InputDecoration(
                                  // labelText: text,
                                  // labelStyle: TextStyle(
                                  //     color: Color.fromRGBO(255, 126, 71, 1),
                                  //     fontSize: 14),
                                  fillColor: Color.fromRGBO(255, 243, 237, 1),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 12.0)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Weight input
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('น้ำหนัก (กก.)'),
                            SizedBox(height: 5),
                            Textfield(
                              controller: _weightController,
                              text: 'เช่น 70',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16), // Spacer between columns
                      // Height input
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ส่วนสูง (ซม.)'),
                            SizedBox(height: 5),
                            Textfield(
                                controller: _heightController,
                                text: 'เช่น 170'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('โรคประจำตัวอื่น ๆ (ถ้ามี)'),
                      SizedBox(height: 5),
                      Textfield(
                        controller: _congenitaldiseaseController,
                        text: 'เช่น ความดันโลหิตสูง',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('การแพ้อาหารหรือข้อจำกัดด้านอาหาร'),
                      SizedBox(height: 5),
                      Textfield(
                        controller: _foodallergyController,
                        text: 'เช่น ถั่ว นม',
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    }, // Call the passed function
                    child: Text(
                      'กลับ', // Use the passed text
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(255, 126, 71, 1),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side:
                            BorderSide(color: Color.fromRGBO(255, 126, 71, 1)),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Orangebutton(
                      text: 'ถัดไป',
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
