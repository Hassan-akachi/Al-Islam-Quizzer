import 'package:al_islam_quizzer/screens/quiz_screen.dart';
import 'package:al_islam_quizzer/state/quiz_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/quiz.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);
  static const List title = ["prophets", "Quran", "Solat","Ramadan","Hajj"];

  static int ind=0;

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizBox>(builder: (context, state, _) {
      return ListView.builder(
        itemBuilder: (context, index) {
          int  getIndex(){
            return ind =index;
          }
          return Card(
            child: ListTile(
              title: Text(
                title[index ],
                style: Theme.of(context).textTheme.headline1,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuizScreen()));
                getIndex();
                state.catNum=index;

                print("tapped,${title[index]} ${title[ind]}");


              },
            ),
          );
        },
        itemCount: title.length,

    );
    });
  }
}
