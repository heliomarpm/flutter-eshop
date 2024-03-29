import 'package:flutter/material.dart';

class RowDivisor extends StatelessWidget {
  final String title;

  const RowDivisor({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.only(
            left: 30,
            // top: 10,
            right: 30,
            // bottom: 10,
          ),
          child: const Divider(),
        ),
      ),
      Text(title),
      Expanded(
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.only(
            left: 30,
            top: 10,
            right: 30,
            bottom: 10,
          ),
          child: const Divider(),
        ),
      ),
    ]);
  }
}
