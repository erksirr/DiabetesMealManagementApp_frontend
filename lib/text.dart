import 'package:flutter/material.dart';

class ThaiProfileForm extends StatefulWidget {
  @override
  _ThaiProfileFormState createState() => _ThaiProfileFormState();
}

class _ThaiProfileFormState extends State<ThaiProfileForm> {
  String gender = 'ชาย'; // Default to 'male'
  double weight = 70;
  double height = 165;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โปรไฟล์'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'วันเดือนปีเกิด',
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: gender,
                    decoration: InputDecoration(labelText: 'เพศสภาพ'),
                    items: ['ชาย', 'หญิง'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        gender = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text('น้ำหนัก (กก.)'),
            Slider(
              value: weight,
              min: 30,
              max: 200,
              divisions: 170,
              label: weight.round().toString(),
              onChanged: (newValue) {
                setState(() {
                  weight = newValue;
                });
              },
            ),
            Text('ส่วนสูง (ซม.)'),
            Slider(
              value: height,
              min: 100,
              max: 220,
              divisions: 120,
              label: height.round().toString(),
              onChanged: (newValue) {
                setState(() {
                  height = newValue;
                });
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'โรคประจำตัวอื่น ๆ (ถ้ามี)',
              ),
            ),
            SizedBox(height: 16),
            Text('การแพ้ยาหรือสิ่งอื่นที่ต้องห้ามอาหาร'),
            CheckboxListTile(
              title: Text('เน้น ถั่ว นม'),
              value: false,
              onChanged: (bool? value) {
                // Handle checkbox state
              },
            ),
          ],
        ),
      ),
    );
  }
}