import 'package:al_islam_quizzer/state/quiz_box.dart';
import 'package:al_islam_quizzer/screens/home_screen.dart';
import 'package:al_islam_quizzer/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../state/quiz.dart';

class DisplayScore extends StatelessWidget {
  static const String routeName = "/Display-Score";

  const DisplayScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizBox>(builder: (context, state, _) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Your Score :",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
              Text(
                "${state.scoreCounter}/ ${section[state.catNum].length}",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
              CustomTextButton(
                  action: "OK",
                  onPressed: () {
                    state.scoreReset();
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  })
            ],
          ),
        ),
      );
    });
  }
}
