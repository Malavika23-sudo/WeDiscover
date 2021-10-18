import 'package:flutter/material.dart';
import 'package:we_discover/constants/color_constants.dart';
import 'package:we_discover/constants/style_constants.dart';

class SignupButton extends StatelessWidget {
  final String? text;
  const SignupButton({this.text});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          side: const BorderSide(color: Colors.green),
        ),
        child: Center(
            child: Text(text.toString(),
                style: Theme.of(context).textTheme.bodyText2)));
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: headlinecolor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      onPressed: () {},
      child: const Center(
          child: Text(
        'Sign Up',
        style: signupText,
      )),
    );
  }
}
