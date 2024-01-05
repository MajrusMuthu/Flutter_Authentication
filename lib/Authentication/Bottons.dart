// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  final Function()? onTap;
   const MyBotton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
          ),
        ),
      ),
    );
  }
}
