import 'package:flutter/material.dart';

Widget GreenLeft(double widthSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: widthSize,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(30)),
        ),
      ),
      SizedBox(width: 8),
      Text(
        'شاخص مثبت',
        style: TextStyle(color: Colors.green),
      ),
    ],
  );
}
