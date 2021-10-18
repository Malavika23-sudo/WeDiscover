import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_discover/constants/color_constants.dart';
import 'package:we_discover/custom_widgets/divider_for_or.dart';
import 'package:we_discover/custom_widgets/image_box.dart';
import 'package:we_discover/custom_widgets/text_field_login.dart';
import 'package:we_discover/custom_widgets/signup_button.dart';
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
          height: 800,
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // SizedBox(
                //   height: 10.0,
                // ),
                ImageContainer(),
                WeDiscoverTitle(),
                // SizedBox(
                //   height: 30.0,
                // ),
                Text('Email'), // SizedBox(
                //   height: 30.0,
                // ),
                LoginTextField(),
                Text('Password'),
                LoginTextField(),
                // SizedBox(
                //   height: 30.0,
                // ),
                LoginButton(),
                // SizedBox(
                //   height: 10.0,
                // ),
                DividerForOr(),
                // SizedBox(
                //   height: 10.0,
                // ),
                SignupButton(
                  text: 'Login with phone number',
                ),
                // SizedBox(
                //   height: 10.0,
                // ),
                DividerForOr(),
                // SizedBox(
                //   height: 10.0,
                // ),
                SignupButton(text: 'Login with Google'),
                // SizedBox(
                //   height: 30.0,
                // ),
                SignupButton(text: 'Login with Facebook'),
                SizedBox(height: 50.0, width: 50.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
