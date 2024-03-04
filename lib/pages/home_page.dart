import 'package:flutter/material.dart';

import '../models/item_cart.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/row_divisor.dart';
import '../widgets/view_products.dart';

class HomePage extends StatelessWidget {
  final List products = [
    {
      "title": "Mesa",
      "price": 300,
      "image": "movel1.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Cadeira",
      "price": 120,
      "image": "movel2.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Manta",
      "price": 200,
      "image": "movel3.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Sofá Cinza",
      "price": 800,
      "image": "movel4.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Mesa de cabeceira",
      "price": 400,
      "image": "movel5.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Jogo de Cama",
      "price": 250,
      "image": "movel6.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "title": "Sofá Branco",
      "price": 900,
      "image": "movel7.jpg",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];
  static List<ItemCart> itemsCart = [];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "eShop", 
        // centerTitle: true,
      ),
      // backgroundColor: Colors.grey[200],
      // body: TextButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => ProdutosPage(
      //           moveis: moveis,
      //         ),
      //       ),
      //     );
      //   },
      //   child: const Text("Ir para lista de produtos"),
      // ),
      body: Column(
        children: [
          const RowDivisor(title: "Produtos"),
          Flexible(
            child: ViewProducts(
              products: products,
            ),
          ),
        ],
      ),
    );
  }
}
