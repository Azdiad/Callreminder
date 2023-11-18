import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class transparent extends StatelessWidget {
  const transparent({
    super.key,
    required this.widths,
    required this.heights,
    this.childd,
  });

  final double widths;
  final double heights;
  final childd;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      blur: 2,
      border: 2,
      linearGradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.grey,
        ],
      ),
      borderGradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.grey,
        ],
      ),
      borderRadius: 30,
      width: widths,
      height: heights,
      child: SingleChildScrollView(
        child: childd,
      ),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15),
      //   color: Colors.white,
      //   // boxShadow: [
      //   //   BoxShadow(
      //   //       color: Colors.grey.shade500,
      //   //       offset: Offset(8.0, 8.0),
      //   //       blurRadius: 15.0,
      //   //       spreadRadius: 1.0),
      //   //   BoxShadow(
      //   //       color: Colors.white,
      //   //       offset: Offset(-8.0, -8.0),
      //   //       blurRadius: 15.0,
      //   //       spreadRadius: 1.0),
      //   // ],
      // ),
    );
  }
}
