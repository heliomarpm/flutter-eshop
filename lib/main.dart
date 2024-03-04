import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'themes/app_theme.dart';
import 'pages/home_page.dart';
import 'pages/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eShop v1.0',
      theme: ThemeData(
        primarySwatch: AppTheme().lilas,
        scaffoldBackgroundColor: Colors.grey[100],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          headline2: TextStyle(
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontSize: 16,
            fontFamily: 'Alata',
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          headline4: TextStyle(
            fontSize: 20,
            fontFamily: 'Alata',
            fontWeight: FontWeight.w200,
            color: Colors.black87,
          ),
        ),
      ),
      home: HomePage(),
      routes: {
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
