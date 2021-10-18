import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/chat.png'), fit: BoxFit.fill)),
      ),
    );
  }
}
