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
      backgroundColor: Config.blackcolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
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
              _animationVoice(),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    width: 150,
                    child: floatbottonmicrophone()),
              )
            ],
          ),
        ),
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
}
