import 'package:flutter/material.dart';
import 'package:we_discover/screens/splach_screen.dart';

const primarycolour = Colors.green;
const scaffoldcolour = Color(0xFF0d3504);
const fontsizeheadline1 = 50.0;
const fontsizeheadline2 = 36.0;
const bodytext1 = 20.0;
void main() {
  runApp(Material(
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
              fontSize: fontsizeheadline1,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic),
          headline2: TextStyle(
              fontSize: fontsizeheadline2, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: bodytext1, fontFamily: 'Hind'),
        ),
      ),
      home: Scaffold(body: Spalach()),
    );
  }
}
