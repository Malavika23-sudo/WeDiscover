import 'package:flutter/material.dart';
import 'package:we_discover/constants/color_constants.dart';
import 'package:we_discover/constants/style_constants.dart';
import 'package:we_discover/custom_widgets/image_box.dart';
import 'package:we_discover/custom_widgets/signup_button.dart';
import 'package:we_discover/custom_widgets/text_field_login.dart';
import 'package:we_discover/screens/splach_screen.dart';

class PhoneLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          children: [
            ImageContainer(),
            WeDiscoverTitle(),
            Text('Phone number'),
            LoginTextField(),
            Text('Otp'),
            LoginTextField(),
            LoginButton(
              title: 'LOGIN',
              colour: headlinecolor,
              style: signupText,
              onpressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => EmailLogin()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
