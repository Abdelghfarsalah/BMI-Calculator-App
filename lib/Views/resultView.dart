import 'package:bmi/Views/Widgets/resultViewBody.dart';
import 'package:flutter/material.dart';

class resultView extends StatelessWidget {
  const resultView({super.key,required this.WEIGHT,required this.age,required this.height,required this.ismale});
  final double height ;
  final int WEIGHT ;
  final int age ;
  final bool ismale;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111324),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff111324),
        centerTitle: true,
        title: Text('BMI RESULT'),
      ),
      body: resultviewbOdy(WEIGHT: WEIGHT, age: age, height: height, ismale: ismale),
    );
  }
}