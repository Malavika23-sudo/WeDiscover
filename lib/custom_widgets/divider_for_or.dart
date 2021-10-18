import 'package:flutter/material.dart';

class DividerForOr extends StatelessWidget {
  const DividerForOr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          Divider(
            height: 30,
            color: Colors.white,
          ),
          Text('Or'),
          Divider(
            height: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
