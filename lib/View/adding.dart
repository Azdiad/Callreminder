import 'package:callremind/View/home.dart';
import 'package:callremind/View/widgets/glass.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import 'package:rive/rive.dart';

class adding extends StatefulWidget {
  const adding({super.key});

  @override
  State<adding> createState() => _addingState();
}

class _addingState extends State<adding> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          RiveAnimation.asset(
            'assets/rive/background.riv',
            fit: BoxFit.fill,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Centerglass(
                  vert: 0,
                  hori: 0,
                  heightfor: heights / 1.5,
                  childd: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  )),
                              width: widths / 1.2,
                              height: heights / 9,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2),
                              ),
                              width: widths / 1.2,
                              height: heights / 7,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2),
                              ),
                              width: widths / 1.2,
                              height: heights / 7,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                              width: widths / 1.2,
                              height: heights / 9,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    NeumorphicButton(
                                        width: 100,
                                        height: 50,
                                        child: Center(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                        backgroundColor: Colors.grey,
                                        bottomRightShadowColor: Colors.black,
                                        topLeftShadowColor: Colors.white54,
                                        onTap: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                            builder: (context) => Homepage(),
                                          ));
                                        }),
                                    NeumorphicButton(
                                        width: 100,
                                        height: 50,
                                        child: Center(
                                          child: Text(
                                            'Save',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                        backgroundColor: Colors.grey,
                                        bottomRightShadowColor: Colors.black,
                                        topLeftShadowColor: Colors.white54,
                                        onTap: () {})
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
