import 'package:al_islam_quizzer/state/quiz_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_num.dart';


class CustomRadioListTile extends StatefulWidget {


  const CustomRadioListTile({Key? key,})
      : super(key: key);
  static AppEnum? _character = AppEnum.NON;
  AppEnum? get  character =>_character;

  @override
  State<CustomRadioListTile> createState() =>
      _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  QuizBox quizBox= QuizBox();
  _CustomRadioListTileState();


  @override
  Widget build(BuildContext context) {


    return Consumer<QuizBox>(builder:(context,state,_) {
      return Column(
        children: [
          Expanded(flex: 2,
            child: RadioListTile(
                title: Text(state.getOptions(0), style: Theme
                    .of(context)
                    .textTheme
                    .headline1,),
                activeColor: Theme
                    .of(context)
                    .primaryColor,
                value: AppEnum.optionA,
                groupValue: CustomRadioListTile._character,
                onChanged: (AppEnum? value) {
                  setState(() {
                    CustomRadioListTile._character = value;
                    print("${AppEnum.optionA}");
                  });
                }),
          ),
          Expanded(flex: 2,
            child: RadioListTile(title: Text(state.getOptions(1), style: Theme
                .of(context)
                .textTheme
                .headline1,),
                activeColor: Theme
                    .of(context)
                    .primaryColor,
                value: AppEnum.optionB,
                groupValue: CustomRadioListTile._character,
                onChanged: (AppEnum? value) {
                  setState(() {
                    CustomRadioListTile._character= value;
                    print("${AppEnum.optionB}");
                  });
                }),
          ),
          Expanded(flex: 2,
            child: RadioListTile(title: Text(state.getOptions(2), style: Theme
                .of(context)
                .textTheme
                .headline1,),
                activeColor: Theme
                    .of(context)
                    .primaryColor,
                value: AppEnum.optionC,
                groupValue: CustomRadioListTile._character,
                onChanged: (AppEnum? value) {
                  setState(() {
                    CustomRadioListTile._character = value;
                    print("${AppEnum.optionC}");
                  });
                }),
          ),
          Expanded(flex: 2,
            child: RadioListTile(title: Text(state.getOptions(3), style: Theme
                .of(context)
                .textTheme
                .headline1,),
                activeColor: Theme
                    .of(context)
                    .primaryColor,
                value: AppEnum.optionD,
                groupValue: CustomRadioListTile._character,
                onChanged: (AppEnum? value) {
                  setState(() {
                    CustomRadioListTile._character = value;
                    print("${AppEnum.optionD}");
                  });
                }),
          ),
        ],
      );
    });
  }
}