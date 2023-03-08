import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_samples_application/app_clone/assistant_voice/Config.dart';
import 'package:rive/rive.dart' as rive;

import 'Utils.dart';

class MainScreenAssistantVoice extends StatefulWidget {
  const MainScreenAssistantVoice({super.key});

  @override
  State<MainScreenAssistantVoice> createState() =>
      _MainScreenAssistantVoiceState();
}

class _MainScreenAssistantVoiceState extends State<MainScreenAssistantVoice>
    with TickerProviderStateMixin {
  @override
  late AnimationController _animationcontroller;
  late Animation _animationposition;
  @override
  void initState() {
    _animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationposition =
        IntTween(begin: 0, end: 1).animate(_animationcontroller);
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
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
              )),
          Positioned(
              top: -125,
              left: -125,
              width: 350,
              height: 350,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(radius: 0.5, colors: [
                      Config.secundarycolor.withOpacity(0.1),
                      Config.blackcolor
                    ], stops: [
                      0.2,
                      1
                    ])),
              )),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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

                _wavesanimations(context),
                //_animationVoice(),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    width: 150,
                    child: floatbottonmicrophone()),

                /*
                _transparentsContainers(
                    'Speaking', 'Talk to me about anything', Icons.volume_up),
                _transparentsContainers(
                    'Game', "Let's fight", Icons.groups_sharp),
                _transparentsContainers('Walking',
                    "Let's take a walk around the city", Icons.videogame_asset)
                    */
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _animationVoice() {
    return AnimatedBuilder(
      animation: _animationcontroller,
      builder: (context, child) {
        return Container(
          width: 150,
          height: 150,
          color: Colors.amber,
        );
      },
    );
  }

  Widget _transparentsContainers(
      String tittle, String subtittle, IconData icon) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tittle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Signika',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  subtittle,
                  style: TextStyle(
                    fontFamily: 'Signika',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget _wavesanimations(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: rive.RiveAnimation.asset(
        'assets/app_clone/assistant_voices/waves.riv',
        fit: BoxFit.cover,
      ),
    );
  }
}
