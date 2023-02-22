import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import 'config.dart';

double? widthphone;
double? heightphone;

class MainLanguageLearning extends StatefulWidget {
  const MainLanguageLearning({super.key});

  @override
  State<MainLanguageLearning> createState() => _MainLanguageLearningState();
}

class _MainLanguageLearningState extends State<MainLanguageLearning>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animationposition;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _animationposition =
        IntTween(begin: 0, end: 100).animate(_animationController);
    print(_animationController.value);
    _animationposition.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

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
                      //left: -30,
                      //left: 300,
                      left: -3.3 * _animationposition.value + 300,
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
                            color: Config.primarycolordark
                                .withOpacity(_animationposition.value / 100),
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
                        child: Column(children: [
                          Flexible(
                            flex: _animationposition.value,
                            child: Container(
                              color: Config.black,
                            ),
                          ),
                          Flexible(
                            flex: 100 -
                                int.parse(_animationposition.value.toString()),
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                      Flexible(
                          flex: 1,
                          child: Stack(children: [
                            Row(
                              children: [
                                Flexible(
                                    flex: 100 -
                                        int.parse(_animationposition.value
                                            .toString()),
                                    child: Container(
                                      color: Colors.white,
                                    )),
                                Flexible(
                                    flex: _animationposition.value,
                                    child:
                                        Container(color: Config.primarycolor))
                              ],
                            ),
                            Positioned(
                              bottom: (heightphone! / 2 - 130) / 4,
                              left: widthphone! / 2 + 30,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Config.secundarycolor.withOpacity(
                                      _animationposition.value / 100),
                                ),
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
                    onTap: () async {
                      await _animationController.reverse();

                      context
                          .go('/languagelearning/languagelearningmainscreen');
                    },
                    child: Ink(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Config.secundarycolor
                                .withOpacity(_animationposition.value / 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        width: widthphone! - 40,
                        height: 55,
                        child: Center(
                          child: Text(
                            'get started',
                            style: TextStyle(
                                color: Colors.black.withOpacity(
                                    _animationposition.value / 100),
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
