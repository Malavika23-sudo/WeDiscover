import 'package:flutter/material.dart';
import 'package:we_discover/constants/style_constants.dart';

class SignupButton extends StatelessWidget {
  final String? text;
  void Function()? onpressed;
   SignupButton({this.text,this.onpressed});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onpressed,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          side: const BorderSide(color: Colors.green),
        ),
        child: Center(
            child: Text(text.toString(),
                style: Theme.of(context).textTheme.bodyText2)));
  }
}

class LoginButton extends StatelessWidget {
  String? title;
  Color? colour;
  TextStyle? style;
  void Function()? onpressed;
  LoginButton({this.title, this.colour, this.style,this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: colour,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      onPressed: onpressed,
      child: Center(
          child: Text(
        title.toString(),
        style: style,
      )),
    );
  }
}
