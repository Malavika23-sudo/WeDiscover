import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

const introscrenbarcolour = Color(0xFF53b578);

class IntroSlider extends StatelessWidget {
  const IntroSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text('Text one',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(1000),
                  ),
                  color: scaffoldcolour,
                ),
                width: 250,
                height: 250,
              ),
              Row(
                children: [
                  SignupButton(),
                  const Divider(
                    //height: 20,
                    color: Colors.black,
                    thickness: 5,
                    //indent: 20,
                    endIndent: 20,
                  ),
                  SignupButton()
                ],
              ),

              // CircleAvatar(
              //   radius: 50.0,
              //   backgroundColor: Colors.green,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: introscrenbarcolour,
          height: 40,
          child: Center(
              child:
                  Text('Login', style: Theme.of(context).textTheme.bodyText1))),
    );
  }
}
