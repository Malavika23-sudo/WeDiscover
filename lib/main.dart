import 'package:flutter/material.dart';
import 'package:we_discover/screens/splach_screen.dart';
import 'package:we_discover/constants/color_constants.dart';

void main() {
  runApp(const Material(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: primarycolour,
        scaffoldBackgroundColor: scaffoldcolour,
        // primaryColorDark: Colors.green,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: 'PTSans',
              fontSize: fontsizeheadline1,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic),
          headline2: TextStyle(
              fontFamily: 'PTSans',
              fontSize: fontsizeheadline2,
              fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: bodytext1, fontFamily: 'PTSans'),
        ),
      ),
      home: const Scaffold(body: Spalach()),
    );
  }
}
