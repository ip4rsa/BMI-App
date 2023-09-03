import 'package:flutter/material.dart';

Widget RedRight(double widthSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        'شاخص منفی',
        style: TextStyle(color: Colors.red),
      ),
      SizedBox(width: 8),
      Container(
        width: widthSize,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), bottomLeft: Radius.circular(5)),
        ),
      ),
    ],
  );
}
