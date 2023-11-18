import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Centerglass extends StatelessWidget {
  final double vert;
  final double hori;
  final double heightfor;
  final Widget childd;

  Centerglass({
    Key? key,
    required this.vert,
    required this.hori,
    required this.childd,
    required this.heightfor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SizedBox(
        height: heightfor,
        child: GlassmorphicContainer(
          height: heights,
          width: widths * .9,
          borderRadius: 20,
          blur: 20,
          padding: EdgeInsets.symmetric(vertical: vert, horizontal: hori),
          // alignment: Alignment.center,

          border: 2,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.1),
                Color(0xFFFFFFFF).withOpacity(0.05),
              ],
              stops: [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFFFFF).withOpacity(0.5),
              Color((0xFFFFFFFF)).withOpacity(0.5),
            ],
          ),
          child: childd,
        ),
      ),
    );
  }
}
