import 'package:flutter/material.dart';

import '../models/product.dart';
import '../pages/product_page.dart';
import 'gradient_container.dart';

class TileProduct extends StatelessWidget {
  final Product product;

  const TileProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.white24,
    //   child: Text(product.title),
    // );
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, '/product', arguments: product);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(product: product),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8.0,
              color: Colors.black12,
            ),
          ],
        ),
        margin: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${product.image}'),
                ),
              ),
              const GradientContainer(),
              Positioned(
                bottom: 10,
                child: Text(product.title, style: Theme.of(context).textTheme.headline2,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}