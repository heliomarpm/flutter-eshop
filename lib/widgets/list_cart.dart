import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/item_cart.dart';
import '../models/product.dart';
import '../pages/home_page.dart';

class ListCart extends StatefulWidget {
  final Function? updatePage;

  const ListCart({super.key, this.updatePage});

  @override
  State<ListCart> createState() => _ListCartState();
}

class _ListCartState extends State<ListCart> {
  final List<ItemCart> cart = HomePage.itemsCart;
  final formatReal = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  // ItemsCart({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (BuildContext context, int indice) {
        ItemCart item = cart[indice];

        return Container(
          margin: const EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(item.product.imageUrl),
                    height: 92,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.product.title,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatReal.format(item.product.price)),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => _incrementItem(item),
                                  child: Container(
                                    margin: const EdgeInsets.all(8),
                                    child: const Icon(Icons.add_circle, size: 18),
                                  ),
                                ),
                                Text('${item.quantity}'),
                                InkWell(
                                  onTap: () => _decrementItem(item),
                                  child: Container(
                                    margin: const EdgeInsets.all(8),
                                    child: const Icon(Icons.remove_circle, size: 18),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _incrementItem(ItemCart item) {
    setState(() {
      item.quantity++;
      widget.updatePage != null ? widget.updatePage!() : null;
    });
  }

  void _decrementItem(ItemCart item) {
    setState(() {
      item.quantity > 1 ? item.quantity-- : HomePage.itemsCart.remove(item);
      widget.updatePage != null ? widget.updatePage!() : null;
    });
  }
}
