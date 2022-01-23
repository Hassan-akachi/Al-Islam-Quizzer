import 'package:al_islam_quizzer/app_num.dart';
import 'package:al_islam_quizzer/state/quiz_box.dart';
import 'package:al_islam_quizzer/screens/display_score.dart';
import 'package:al_islam_quizzer/widgets/custom_radio_list_tile.dart';
import 'package:al_islam_quizzer/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/quiz.dart';

class QuizScreen extends StatelessWidget {
  static const String routeName = "/Quiz-Screen";

  QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<QuizBox>(builder: (context, state, _) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(children: [
                    Expanded(
                      flex: 5,
                      child: Stack(children: [
                        Positioned(
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * .4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Text(
                              state.getQuestions(),
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ),
                        Positioned(
                            right: 20,
                            top: 20,
                            child: Text(
                              "${state.showQuestionNum()}/${section[state.catNum].length}",
                              style: Theme.of(context).textTheme.headline2,
                            )),
                      ]),
                    ),
                    const Expanded(flex: 3, child: CustomRadioListTile()),
                  ]),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .04,
                      ),
                      CustomTextButton(
                          action: "Verify",
                          onPressed: () {
                            state.verify();
                            if (state.customRadioT == AppEnum.NON) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("choose an option")));
                            } else {
                              state.isCorrect == false
                                  ? ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "WRONG! ,correct ans is ${state.getAnswer()}")))
                                  : ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text("CORRECT ,click next")));
                            }
                          }),
                      state.scoreNav == false
                          ? CustomTextButton(
                              action: "Next",
                              onPressed: () {
                                state.getFinalScore();
                                state.getNextQuestion();
                              })
                          : CustomTextButton(
                              action: "Finish",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DisplayScore()));
                                state.reset();
                              })
                    ],
                  ),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height *.01,)
              ],
            ),
          ),
        );
      }),
    );
  }
}
