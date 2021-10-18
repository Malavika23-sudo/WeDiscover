import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:we_discover/constants/color_constants.dart';
import 'package:we_discover/constants/style_constants.dart';
import 'package:we_discover/custom_widgets/custom-intro-slider/intro_slider_data.dart';
import 'package:we_discover/screens/login_screen.dart';

class IntroSlides extends StatefulWidget {
  const IntroSlides({Key? key}) : super(key: key);

  @override
  State<IntroSlides> createState() => _IntroSlidesState();
}

class _IntroSlidesState extends State<IntroSlides> {
  int currentpage = 0;
  int? total = SlidesDatas.listofSlides()!.length.toInt();
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentpage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentpage == index ? primarycolour : colorDotInactivecolor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/intro2.jpg'), fit: BoxFit.fill)),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentpage = currentpage + 1;
                      });
                    },
                    child: const Text('Skip', style: skipButtonTextStyle),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: PageView.builder(
                itemCount: total,
                onPageChanged: (value) {
                  setState(() {
                    currentpage = value;
                    // value = currentpage;
                  });
                },
                itemBuilder: (BuildContext context, int index1) {
                  SlidesData? instance = SlidesDatas.listofSlides()![index1];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30.0),
                      Text(
                        instance.title.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'PTSans',
                            fontSize: fontsizeheadline2,
                            fontWeight: FontWeight.bold,
                            color: headlinecolor),
                      ),
                      const SizedBox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          instance.des.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: bodytext1,
                              fontFamily: 'PTSans',
                              color: descolor),
                        ),
                      ),
                      const SizedBox(height: 55.0),
                      // index1 == (total! - 1)
                      //     ? Container(
                      //         width: 250.0,
                      //         decoration: BoxDecoration(
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.circular(40.0)),
                      //         child: MaterialButton(
                      //           onPressed: () {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) => LoginScreen()),
                      //             );
                      //           },
                      //           child: Center(
                      //               child: Text('Get Started',
                      //                   style: StartButtonTextStyle2)),
                      //         ),
                      //       )
                      //     : Container(),
                    ],
                  );
                }),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const SizedBox(width: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    total!,
                    (index) => buildDot(index: index),
                  ),
                ),
                const SizedBox(width: 170.0),
                currentpage == (total! - 1)
                    ? Container(
                        width: 110.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: descolor,
                            borderRadius: BorderRadius.circular(100.0)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: const Center(
                              child: Text('Get Started', style: test)),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
      //),
    ));
  }
}
