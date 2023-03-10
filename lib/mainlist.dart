import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

double? widthphone;
double? heightphone;

class MainList extends StatelessWidget {
  const MainList({super.key});
  @override
  Widget build(BuildContext context) {
    widthphone = MediaQuery.of(context).size.width;
    heightphone = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          'List of aplications',
          style: TextStyle(fontSize: 25),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              _listViewOptional(
                context,
                'Languages\nlearning',
                Colors.greenAccent,
                '/languagelearning',
                'assets/main/images/languagesapp.png',
              ),
              _listViewOptional(
                  context,
                  'Assistant\nVoices',
                  Colors.yellowAccent,
                  '/voiceassistant',
                  'assets/main/images/VoiceAssistantApp.png'),
              _listViewOptional(context, 'Primera', Colors.yellowAccent, '',
                  'assets/main/images/languagesapp.png'),
            ],
          ),
        ),
      ],
    )
            /*(
        children: [
          _listViewOptional('Primera', Colors.amberAccent, '',
              'assets/main/images/languagesapp.png'),
          _listViewOptional('Primera', Colors.amberAccent, '',
              'assets/main/images/languagesapp.png'),
          _listViewOptional('Primera', Colors.amberAccent, '',
              'assets/main/images/languagesapp.png'),
          _listViewOptional('Primera', Colors.amberAccent, '',
              'assets/main/images/languagesapp.png'),
        ],
      ),*/
            ));
  }
}

Widget _listViewOptional(BuildContext context, String tittle,
    MaterialAccentColor color, String route, String image) {
  return GestureDetector(
    onTap: () => {
      context.go(route),
    },
    child: Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage(image)),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Stack(
              children: [
                Text(
                  tittle,
                  style: TextStyle(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    //color: color,
                  ),
                ),
                Text(
                  tittle,
                  style: TextStyle(
                      color: color, fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
