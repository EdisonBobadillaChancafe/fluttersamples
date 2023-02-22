import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_samples_application/app_clone/language_learning_mobile/config.dart';

double? widthphone;
double? heightphone;

class MainScreenLanguageLearning extends StatelessWidget {
  const MainScreenLanguageLearning({super.key});

  @override
  Widget build(BuildContext context) {
    widthphone = MediaQuery.of(context).size.width;
    heightphone = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: heightphone! / 10,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.crop_square,
                color: Colors.grey,
              ),
              Icon(
                Icons.shopping_basket_sharp,
                color: Colors.grey,
              ),
              Icon(
                Icons.person,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),
            _containerwelcome(80, 'Welcome back, Juan!', Config.secundarycolor),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                SizedBox(
                  width: 15,
                ),
                Text('new lesson for you',
                    style: TextStyle(
                        color: Config.black,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ]),
            ),
            SizedBox(height: 10),
            _containerlanguage(160, '字母', 'alphabet', '母', Config.primarycolor),
            SizedBox(height: 10),
            _containerlanguage(160, '写作', 'writting', '作', Config.primarycolor),
            SizedBox(height: 10),
            _containerlanguage(
                160,
                '疑问分词 ma',
                'the interrogative\nparticiple "ma"',
                '疑',
                Config.secundarycolor),
          ],
        ),
      ),
    );
  }

  Widget _containerwelcome(double height, String word, Color primarycolor) {
    return Container(
      decoration: BoxDecoration(
          color: primarycolor,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      margin: EdgeInsets.only(left: 15, right: 15),
      width: double.infinity,
      height: height,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 25,
            child: ClipOval(
              child: Image.asset(
                fit: BoxFit.fill,
                'assets/app_clone/language_learning/photosmiling.jpg',
                height: 100,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                word,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _containerlanguage(double height, String chineseword,
    String traductorword, String backgroundchineseword, Color primarycolor) {
  return Container(
    decoration: BoxDecoration(
        color: primarycolor,
        borderRadius: BorderRadius.all(Radius.circular(25))),
    margin: EdgeInsets.only(left: 15, right: 15),
    width: double.infinity,
    height: height,
    child: Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12, left: 25),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text(
                  chineseword,
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                    applyHeightToLastDescent: false,
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  traductorword,
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Inter', color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -80,
          right: -50,
          child: Text(
            backgroundchineseword,
            overflow: TextOverflow.clip,
            style:
                TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 220),
          ),
        )
      ],
    ),
  );
}
