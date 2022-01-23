import 'package:al_islam_quizzer/state/quiz_box.dart';
import 'package:al_islam_quizzer/screens/display_score.dart';
import 'package:al_islam_quizzer/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

import '../screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> QuizBox(),
      child: MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Colors.green[500],
            primaryColor: Colors.brown[300],
            textTheme: const TextTheme(
                headline1: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            headline2: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))),
        home: Builder(
          builder: (context) {
            return SplashScreen(
              seconds: 2,
              navigateAfterSeconds: HomeScreen(),
              title: const Text(
                "AL-Islam Quizzer",
                style: TextStyle(fontSize: 40),
              ),
              image: Image(
                image: AssetImage("assets/cresent2.png"),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              backgroundColor: Colors.green,
              loaderColor: Colors.white,
              useLoader: false,
            );
          }
        ),
        routes: {
          HomeScreen.RouteName: (context) =>  HomeScreen(),
          QuizScreen.routeName: (context) =>  QuizScreen(),
          DisplayScore.routeName:(context) =>DisplayScore()
        },
      ),
    );
  }
}
