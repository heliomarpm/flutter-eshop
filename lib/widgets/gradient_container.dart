import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Color? secondaryColor;

  const GradientContainer({super.key, this.secondaryColor});

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
            secondaryColor ?? Theme.of(context).primaryColor,
          ],
        ),
      ),
    );
  }
}
