import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/product.dart';
import '../models/item_cart.dart';
import '../pages/home_page.dart';

class CardDetail extends StatelessWidget {
  final Product product;
  final formatReal = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");
  final Function updatePage;

  CardDetail({super.key, required this.product, required this.updatePage});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black26,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCardDetail(
            text: product.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          TextCardDetail(text: product.description),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatReal.format(product.price),
                  style: Theme.of(context).textTheme.headline1,
                ),
                ElevatedButton(
                  onPressed: () =>
                      {_addItemCart(ItemCart(product: product, quantity: 1))},
                  child: const Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _addItemCart(ItemCart item) {
    var items = HomePage.itemsCart;
    int index = items.indexWhere((el) => el.product == product);

    if (index >= 0) {
      items[index].quantity++;
    } else {
      items.add(item);
    }
    debugPrint("👉 ${HomePage.itemsCart.length}");
    updatePage();
  }
}

class TextCardDetail extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const TextCardDetail({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      // child: Text(
      //   text,
      //   style: Theme.of(context).textTheme.headline1,
      // ),
      child: _textStyle(),
    );
  }

  _textStyle() {
    return style == null ? Text(text) : Text(text, style: style);
  }
}
