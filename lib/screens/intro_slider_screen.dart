// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intro_slider/intro_slider.dart';
// import 'package:intro_slider/slide_object.dart';
// import 'package:intro_slider/scrollbar_behavior_enum.dart';
// import 'package:we_discover/constants/color_constants.dart';
// import 'package:we_discover/constants/style_constants.dart';
// import 'package:we_discover/screens/login_screen.dart';
//
// class IntroScreen extends StatefulWidget {
//   IntroScreen({Key? key}) : super(key: key);
//
//   @override
//   IntroScreenState createState() => new IntroScreenState();
// }
//
// // ------------------ Custom config ------------------
// class IntroScreenState extends State<IntroScreen> {
//   List<Slide> slides = [];
//   Function? goToTab;
//   @override
//   void initState() {
//     super.initState();
//
//     slides.add(
//       new Slide(
//         title: "Welcome to WeDiscover",
//         // maxLineTitle: 2,
//         styleTitle: TextStyle(
//             fontFamily: 'PTSans',
//             fontSize: fontsizeheadline2,
//             fontWeight: FontWeight.bold,
//             color: colorDotactivecolor),
//         description:
//             "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.  Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. ",
//         styleDescription: TextStyle(
//             fontSize: bodytext1,
//             fontFamily: 'PTSans',
//             color: introScreenBodyColor),
//         marginDescription:
//             EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
//         centerWidget: Text("Replace this with a custom widget",
//             style: TextStyle(color: Colors.white)),
//       ),
//     );
//     slides.add(
//       new Slide(
//         title: "What's special in WeDiscover",
//         styleTitle: TextStyle(
//             fontFamily: 'PTSans',
//             fontSize: fontsizeheadline2,
//             fontWeight: FontWeight.bold,
//             color: colorDotactivecolor),
//         description:
//             "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//         styleDescription: TextStyle(
//             fontSize: bodytext1,
//             fontFamily: 'PTSans',
//             color: introScreenBodyColor),
//       ),
//     );
//   }
//
//   void onDonePress() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => LoginScreen()),
//     );
//   }
//
//   Widget renderDoneBtn() {
//     return Text(
//       'Get Started',
//       style: test,
//     );
//   }
//
//   Widget renderSkipBtn() {
//     return GestureDetector(
//       onTap: () {
//         this.goToTab!(1);
//       },
//       child: Text(
//         'skip',
//         //TODO: get.off impliment.
//         style: SkipButtonTextStyle,
//       ),
//     );
//   }
//
//   ButtonStyle myButtonStyle() {
//     return ButtonStyle(
//       shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
//       backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
//       overlayColor: MaterialStateProperty.all<Color>(Colors.green),
//     );
//   }
//
//   List<Widget> renderListCustomTabs() {
//     List<Widget> tabs = [];
//     for (int i = 0; i < slides.length; i++) {
//       Slide currentSlide = slides[i];
//       tabs.add(ListView(
//         children: <Widget>[
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     child: renderSkipBtn(),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20.0),
//               Container(
//                 child: Text(
//                   currentSlide.title.toString(),
//                   style: currentSlide.styleTitle,
//                   textAlign: TextAlign.center,
//                 ),
//                 margin: EdgeInsets.only(top: 20.0),
//               ),
//               SizedBox(height: 30.0),
//               Container(
//                 child: Text(
//                   currentSlide.description.toString(),
//                   style: currentSlide.styleDescription,
//                   textAlign: TextAlign.center,
//                   maxLines: 5,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 margin: EdgeInsets.only(top: 20.0),
//               ),
//             ],
//           ),
//         ],
//       ));
//     }
//     return tabs;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/image3.png'), fit: BoxFit.fill)),
//       padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
//       constraints: BoxConstraints.expand(),
//       child: IntroSlider(
//         slides: this.slides,
//         renderDoneBtn: this.renderDoneBtn(),
//         onDonePress: this.onDonePress,
//         doneButtonStyle: myButtonStyle(),
//         colorDot: colorDotInactivecolor,
//         colorActiveDot: scaffoldcolour,
//         sizeDot: 10.0,
//         listCustomTabs: this.renderListCustomTabs(),
//         hideStatusBar: true,
//         showNextBtn: false,
//         showSkipBtn: false,
//         showPrevBtn: false,
//         verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
//         refFuncGoToTab: (refFunc) {
//           this.goToTab = refFunc;
//         },
//       ),
//     );
//   }
// }
