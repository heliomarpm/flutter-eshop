import 'package:flutter/material.dart';

import 'tile_product.dart';
import '../models/product.dart';

class ViewProducts extends StatelessWidget {
  final List products;

  const ViewProducts({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // childAspectRatio: 1.0,
        // crossAxisSpacing: 5.0,
        // mainAxisSpacing: 5.0,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        final product = Product.fromMap(products[index]);

        return TileProduct(
          product: product,
        );
      },
    );
  }
}


