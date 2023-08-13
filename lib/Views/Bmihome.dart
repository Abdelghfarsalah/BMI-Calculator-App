import 'package:bmi/Views/Widgets/BMIhomeBody.dart';
import 'package:flutter/material.dart';
class BMIhome extends StatelessWidget {
  const BMIhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111324),
      appBar: AppBar(
        
        backgroundColor: Color(0xff111324),
        centerTitle: true,
        title: Text('BMICALCULATOR'),
      ),
      body: BmihomeViewBody(),
    );
  }
}