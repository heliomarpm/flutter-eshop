import 'package:flutter/material.dart';

import 'pages/cart_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/cart': (context) => const CartPage(),
      },
      title: 'eShop v1.0',
      theme: ThemeData(
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.grey[100],
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
  }
}
