import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_samples_application/app_clone/assistant_voice/Config.dart';

import 'Utils.dart';

class MainScreenAssistantVoice extends StatelessWidget {
  const MainScreenAssistantVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(color: Config.blackcolor),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 100,
                  right: -50,
                  width: 400,
                  height: 400,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(radius: 0.5, colors: [
                          Config.secundarycolor.withOpacity(0.6),
                          Config.blackcolor
                        ], stops: [
                          0.2,
                          1
                        ])),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Config.secundarycolor),
                      height: 100,
                      width: 100,
                      child: Image.network(
                        'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_421,h_421/https://rodrigovarejao.com/wp-content/uploads/2020/03/3106cfb40fcb91ab9840231c3f6c1684-sticker.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        'Hey, buddy!',
                        style: TextStyle(
                            fontFamily: 'Signika',
                            color: Config.whitecolor,
                            fontSize: 35),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hello! Long time\nno see',
                    style: TextStyle(
                        fontFamily: 'Signika',
                        color: Config.whitecolor,
                        fontSize: 35),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'What are we going\nto do today?',
                    style: TextStyle(
                        fontFamily: 'Signika',
                        color: Config.whitecolor,
                        fontSize: 35),
                  ),
                ),
                //_animationVoice(),
                /*Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    width: 150,
                    child: floatbottonmicrophone()),*/
                _transparentsContainers(),
                _transparentsContainers(),
                _transparentsContainers()
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _animationVoice() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
    );
  }

  Widget _transparentsContainers() {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Speaking',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Speaking',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
