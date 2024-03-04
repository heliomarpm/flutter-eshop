import 'package:flutter/material.dart';

import 'cart_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isCartPage;

  const CustomAppBar({
    super.key,
    required this.title,
    this.isCartPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      actions: [isCartPage ? Container() : const CartButton()],

      // actions: <Widget>[
      //   IconButton(
      //     icon: const Icon(Icons.add),
      //     tooltip: 'Add new entry',
      //     onPressed: () {
      //       // Add your onPressed code here!
      //     },
      //   ),
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
