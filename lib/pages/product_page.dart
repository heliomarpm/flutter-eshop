import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/custom_app_bar.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(product.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: const CustomAppBar(title: "Lista Produto"),
        backgroundColor: Colors.transparent,
        body: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/cart');
          },
          child: const Text("Ir para carrinho"),
        ),
      ),
    );
  }
}
