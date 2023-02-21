import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';

double? widthphone;
double? heightphone;

class MainLanguageLearning extends StatelessWidget {
  const MainLanguageLearning({super.key});

  @override
  Widget build(BuildContext context) {
    widthphone = MediaQuery.of(context).size.width;
    heightphone = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                height: heightphone! - 55,
                child: Stack(children: [
                  Positioned(
                      bottom: 5,
                      left: -50,
                      child: Text(
                        '是',
                        style: TextStyle(
                            color: Config.primarycolor,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 550),
                      )),
                  Positioned(
                      bottom: heightphone! / 2 - 65,
                      child: Text(
                        'start learning chinese now',
                        style: TextStyle(
                            color: Config.primarycolordark,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ))
                ]),
              ),
              /*Positioned(
                child: Text('是',
                    style: TextStyle(
                        overflow: TextOverflow.clip,
                        wordSpacing: 0,
                        color: color['PrimaryColor'],
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 500)),
              ),*/
              Container(
                width: double.infinity,
                height: heightphone! / 2 - 50,
                child: Stack(children: [
                  Column(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Config.black,
                          )),
                      Flexible(
                          flex: 1,
                          child: Stack(children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              child: Container(
                                color: Config.primarycolor,
                              ),
                            ),
                            Positioned(
                              bottom: (heightphone! / 2 - 130) / 4,
                              left: widthphone! / 2 + 30,
                              child: Container(
                                color: Config.secundarycolor,
                                height: 50,
                                width: 40,
                              ),
                            )
                          ])),
                      Container(
                        height: 30,
                        width: double.infinity,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const Positioned(
                      bottom: 5,
                      right: 0,
                      child: Text(
                        '是时',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 200),
                      )),
                ]),
              ),
              Positioned(
                  bottom: 0,
                  right: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Ink(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Config.secundarycolor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        width: widthphone! - 40,
                        height: 55,
                        child: const Center(
                          child: Text(
                            'get started',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ]),
      ),
    );
  }
}
