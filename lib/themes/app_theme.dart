import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final Map<int, Color> _themeLilas = {
    50: const Color.fromRGBO(178, 1555, 178, 0.05),
    100: const Color.fromRGBO(178, 1555, 178, 0.1),
    200: const Color.fromRGBO(178, 1555, 178, 0.2),
    300: const Color.fromRGBO(178, 1555, 178, 0.3),
    400: const Color.fromRGBO(178, 1555, 178, 0.4),
    500: const Color.fromRGBO(178, 1555, 178, 0.5),
    600: const Color.fromRGBO(178, 1555, 178, 0.6),
    700: const Color.fromRGBO(178, 1555, 178, 0.7),
    800: const Color.fromRGBO(178, 1555, 178, 0.8),
    900: const Color.fromRGBO(178, 1555, 178, 0.9)
  };

  MaterialColor lilas = MaterialColor(0xFFB29BB2, _themeLilas);
}
