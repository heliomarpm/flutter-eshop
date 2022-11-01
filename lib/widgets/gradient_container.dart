// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Color? secondaryColor;

  const GradientContainer({
    Key? key,
    this.secondaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            // Color.fromRGBO(178, 155, 178, 0.9)
            secondaryColor?? Theme.of(context).primaryColor,
          ],
        ),
      ),
    );
  }
}
