import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String action;
  final VoidCallback onPressed;

  const CustomTextButton(
      {Key? key, required this.action, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).backgroundColor,
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            action,
            style: Theme.of(context).textTheme.headline2,
          )),
    );
  }
}
