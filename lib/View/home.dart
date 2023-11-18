import 'dart:ui';

import 'package:callremind/View/adding.dart';
import 'package:callremind/View/widgets/neubutton.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            // style: TextStyle(color: ),
            children: <TextSpan>[
              TextSpan(
                  text: 'R',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      letterSpacing: 5)),
              TextSpan(
                  text: 'em',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 5)),
              TextSpan(
                  text: 'ember',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 5,
                      color: Colors.black)),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.withOpacity(.8),
      ),
      body: Stack(
        children: [
          const RiveAnimation.asset(
            'assets/rive/floatingspace.riv',
            fit: BoxFit.fill,
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: const SizedBox(),
          )),
          Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: transparent(
                              widths: widths,
                              heights: heights / 5,
                              childd: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Time : 10: 11 AM",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.delete_forever_rounded,
                                          color: Colors.red,
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Name : Contact Name",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Phone : 1234567890",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Note : Reminder Description',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ]),
                                ),
                              ]),
                            )),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            left: widths / 2.5,
            right: widths / 2.5,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const adding(),
                ));
              },
              child: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
