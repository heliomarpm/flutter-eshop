import 'package:eshop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/list_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final formatReal = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    int valorTotal = _calculateTotal();

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Carrinho",
        isCartPage: true,
      ),
      body: _buildListItems(),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
            'Total',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            formatReal.format(valorTotal),
            style: Theme.of(context).textTheme.headline4,
          ),
        ],),
      ),
    );
  }

  void updatePage() {
    setState(() {});
  }

  int _calculateTotal() {
    if (HomePage.itemsCart.isNotEmpty) {
      return HomePage.itemsCart
          .map((item) => item.product.price * item.quantity)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }

    return 0;
  }

  Widget _buildListItems() {
    if (HomePage.itemsCart.isNotEmpty) {
      return ListCart(
        updatePage: updatePage,
      );
    } else {
      return Container(
        alignment: Alignment.center,
        height: double.infinity,
        child: const Text('Carrinho está vazio!', style: TextStyle(
          fontSize: 16,
        ),),
      );
    }
  }
}
