import 'dart:math';

import 'package:flutter/material.dart';

class resultviewbOdy extends StatelessWidget {
  const resultviewbOdy(
      {super.key,
      required this.WEIGHT,
      required this.age,
      required this.height,
      required this.ismale});
  final double height;
  final int WEIGHT;
  final int age;
  final bool ismale;

  @override
  Widget build(BuildContext context) {
    var result = WEIGHT / pow(height / 100, 2);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            'Gender  :  ' + '${ismale ? 'Male' : 'Female'}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30, 
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Result  :  ' + '${result.round()}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30, 
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Age  :  ' + '${age}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30, 
                fontWeight: FontWeight.w900),
          ),
          Spacer(),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xffE7144C)),
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'BACK',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
