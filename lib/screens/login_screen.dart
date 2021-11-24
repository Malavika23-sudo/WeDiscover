import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_discover/constants/color_constants.dart';
import 'package:we_discover/constants/style_constants.dart';
import 'package:we_discover/custom_widgets/divider_for_or.dart';
import 'package:we_discover/custom_widgets/image_box.dart';
import 'package:we_discover/custom_widgets/text_field_login.dart';
import 'package:we_discover/custom_widgets/signup_button.dart';
import 'package:we_discover/screens/email_login.dart';
import 'package:we_discover/screens/phone_login.dart';
import 'package:we_discover/screens/register_screen.dart';
import 'package:we_discover/screens/splach_screen.dart';

const loginbuttoncolor = Color(0xFF53b578);

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldcolour,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Expanded(
            child: Column(
              children: [
                ImageContainer(),
                WeDiscoverTitle(),
                Text('Already a user?'),
                LoginButton(
                  title: 'LOGIN TO YOUR ACCOUNT',
                  colour: headlinecolor,
                  style: signupText,
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EmailLogin()));
                  },
                ),
                SignupButton(
                  text: 'Login with phone number',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhoneLogin()));
                  },
                ),
                DividerForOr(),
                SignupButton(text: 'Login with Google'),
                SignupButton(text: 'Login with Facebook'),
                LoginButton(
                  title: 'CREATE NEW ACCOUNT',
                  colour: opaquecolor,
                  style: signupText2,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
