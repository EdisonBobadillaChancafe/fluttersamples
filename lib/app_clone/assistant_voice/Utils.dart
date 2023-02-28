import 'package:flutter/material.dart';
import 'package:flutter_samples_application/app_clone/assistant_voice/Config.dart';

Widget floatbottonmicrophone() {
  return Padding(
    padding: EdgeInsets.only(bottom: 50, top: 50),
    child: FloatingActionButton(
      child: Icon(
        Icons.mic_rounded,
        color: Colors.black,
      ),
      backgroundColor: Config.primarycolor,
      onPressed: () {},
    ),
  );
}
