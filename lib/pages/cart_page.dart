import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Carrinho",
        isCartPage: true,
      ),
      body: Text("Carrinho"),
    );
  }
}
