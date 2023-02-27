import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_samples_application/app_clone/assistant_voice/Config.dart';

class MainScreenAssistantVoice extends StatelessWidget {
  const MainScreenAssistantVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.blackcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'What are we going\nto do today?',
                style: TextStyle(
                    fontFamily: 'Signika',
                    color: Config.whitecolor,
                    fontSize: 35),
              ),
            ),
            _animationVoice(),
          ],
        ),
      ),
    );
  }

  Widget _animationVoice() {
    return Container(
      width: 200,
      height: 10,
      color: Colors.amber,
    );
  }
}
