import 'package:flutter/material.dart';

import 'config.dart';

double? widthphone;
double? heightphone;

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }

  String firstletter() {
    return "${this[0]}";
  }
}

class WordScreen extends StatefulWidget {
  final String? word;
  final String? translatedword;
  const WordScreen(
      {super.key, required this.word, required this.translatedword});

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  @override
  Widget build(BuildContext context) {
    widthphone = MediaQuery.of(context).size.width;
    heightphone = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  ' ${widget.translatedword?.capitalize()}',
                  style: TextStyle(
                      fontFamily: 'Inter', fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      '${widget.word?.firstletter()}',
                      style: TextStyle(
                          fontFamily: 'Inter', fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              FloatingActionButton(
                onPressed: () => {},
                backgroundColor: Config.secundarycolor,
                elevation: 0,
                child: Icon(Icons.play_arrow),
              ),
              SizedBox(
                height: 100,
              ),
              Positioned(
                  bottom: 0,
                  right: 20,
                  child: InkWell(
                    onTap: () async {},
                    child: Ink(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Config.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        width: widthphone! - 40,
                        height: 55,
                        child: Center(
                          child: Text(
                            'check it',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
