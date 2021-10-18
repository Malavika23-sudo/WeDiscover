import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:we_discover/custom_widgets/custom-intro-slider/intro_screen.dart';

const chaticoncolour = Colors.green;
const chaticonsize = 50.0;

class Spalach extends StatefulWidget {
  const Spalach({Key? key}) : super(key: key);

  @override
  _SpalachState createState() => _SpalachState();
}

class _SpalachState extends State<Spalach> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const IntroSlides()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // Icon(
        //   //FontAwesomeIcons.commentDots,
        //   size: chaticonsize,
        //   color: chaticoncolour,
        // ),
        WeDiscoverTitle(),
      ],
    ));
  }
}

class WeDiscoverTitle extends StatelessWidget {
  const WeDiscoverTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'WeDiscover',
      style: Theme.of(context).textTheme.headline1,
    ));
  }
}
