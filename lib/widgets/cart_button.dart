import 'package:flutter/material.dart';

import 'badge_count.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pushNamed(context, '/cart')},
      child: Container(
        height: 40,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(
          right: 30,
          left: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            topLeft: Radius.circular(100),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 5,
          //     offset: Offset(0, 2),
          //   ),
          // ],
        ),
        child: const Stack(
          children: [
            Image(
              height: 30,
              image: AssetImage('assets/icons/cart.png'),
            ),
            BadgeCount()
          ],
        ),
      ),
    );
  }
}
