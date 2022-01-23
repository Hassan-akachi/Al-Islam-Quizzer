import 'dart:ffi';

import 'package:al_islam_quizzer/app_num.dart';
import 'package:al_islam_quizzer/widgets/custom_radio_list_tile.dart';
import 'package:al_islam_quizzer/widgets/list_view.dart';
import 'package:flutter/cupertino.dart';

import 'quiz.dart';

class QuizBox with ChangeNotifier {
  CustomRadioListTile customRadioT = CustomRadioListTile();
 
  int catNum =0 ;
  int _questionNum = 0;
  int _questionNumber = 1;
  int _scoreCounter = 0;


  int get scoreCounter => _scoreCounter;
  bool _isCorrect= true;
   bool get isCorrect => _isCorrect;
  bool _scoreNav = false;
  bool get scoreNav =>_scoreNav;
  String _correctAns="";
  // String get correctAns => _correctAns;
 
  String getQuestions() {

    return section[catNum][_questionNum].question;
  }
  
  String getAnswer() {
    return _correctAns = section[catNum][_questionNum].correctAns;
  }

  String getOptions(int optionNum) {
    return section[catNum][_questionNum].options[optionNum];
  }

  void getFinalScore() {
    if (section[catNum][_questionNum].options[0] == section[catNum][_questionNum].correctAns &&
        customRadioT.character == AppEnum.optionA ||
        section[catNum][_questionNum].options[1] == section[catNum][_questionNum].correctAns &&
            customRadioT.character == AppEnum.optionB ||
        section[catNum][_questionNum].options[2] == section[catNum][_questionNum].correctAns &&
            customRadioT.character == AppEnum.optionC ||
        section[catNum][_questionNum].options[3] == section[catNum][_questionNum].correctAns &&
            customRadioT.character == AppEnum.optionD) {
      print("right ans");
      _isCorrect =true;
      _scoreCounter++;
      notifyListeners();
    }
    else{
      print('wrong ans');
    _isCorrect=false;
    notifyListeners();
    }
  }
  void verify() {
    if (section[catNum][_questionNum].options[0] == section[catNum][_questionNum].correctAns &&
        customRadioT.character == AppEnum.optionA ||
        section[catNum][_questionNum].options[1] == section[catNum][_questionNum].correctAns &&
            customRadioT.character == AppEnum.optionB ||
        section[catNum][_questionNum].options[2] == section[catNum][_questionNum].correctAns &&
            customRadioT.character == AppEnum.optionC ||
        section[catNum][_questionNum].options[3] == section[catNum][_questionNum].correctAns &&
            customRadioT.character == AppEnum.optionD) {
      print("correct ans choosed,current section is ${catNum}");

      _isCorrect =true;
      notifyListeners();
    }
    else{
      print('wrong ans');
      _scoreCounter--;
      _isCorrect=false;
      notifyListeners();
    }
  }

  void getNextQuestion() { //gets the next question
    if (_questionNum < section[catNum].length - 1) {
      print("$_questionNum");

      _questionNum++;
      _questionNumber++;
    }else if(_questionNum == section[catNum].length - 1){
      _scoreNav=true;
    }
    else {
      _questionNum = 0;
      _scoreCounter=0;
      _questionNumber = 1;
    }
    notifyListeners();
  }

  int showQuestionNum() {
    return _questionNumber;
  }
  void reset(){
    _scoreNav=false;
    _questionNum = 0;
    _questionNumber = 1;
    notifyListeners();
  }
  void scoreReset(){
    _scoreCounter=0;
    notifyListeners();
  }
}
