import 'package:flutter/material.dart';
import 'package:we_discover/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_discover/screens/intro_slider_screen.dart';
import 'package:we_discover/screens/test.dart';

const chaticoncolour = Colors.green;
const chaticonsize = 50.0;

class Spalach extends StatefulWidget {
  const Spalach({Key? key}) : super(key: key);

  @override
  _SpalachState createState() => _SpalachState();
}

class _SpalachState extends State<Spalach> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    //   setState(() {
    //     _crossFadeState = CrossFadeState.showSecond;
    //   });
    // });
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => IntroSlider()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome'),
        // ),

        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.commentDots,
          size: chaticonsize,
          color: chaticoncolour,
        ),
        Center(
            child: Text(
          'WeDiscover',
          style: Theme.of(context).textTheme.headline1,
        )),
      ],
    ));
  }
}
