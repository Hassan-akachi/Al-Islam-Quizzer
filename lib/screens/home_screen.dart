import 'package:al_islam_quizzer/widgets/list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String RouteName = "/Home-Screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          "Topics",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: const CategoryList()
    );
  }
}
