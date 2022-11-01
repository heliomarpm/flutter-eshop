import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/card_datail.dart';
import '../widgets/custom_app_bar.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    super.initState();
  }

  updatePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.product.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: const CustomAppBar(title: ""),
        backgroundColor: Colors.transparent,
        // body: TextButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/cart');
        //   },
        //   child: const Text("Ir para carrinho"),
        // ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              const Spacer(),
              Container(
                // height: 200, //removido o height e adicionado o Spacer
                margin: const EdgeInsets.all(16),
                child: CardDetail(
                  product: widget.product,
                  updatePage: updatePage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
