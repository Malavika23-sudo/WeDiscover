import 'package:flutter/material.dart';

class DividerForOr extends StatelessWidget {
  const DividerForOr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: Divider(
            height: 30,
            color: Colors.white,
          ),
        ),
        Text('Or,sign Up With'),
        Expanded(
          child: Divider(
            height: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
