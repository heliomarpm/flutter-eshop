import 'package:eshop/pages/home_page.dart';
import 'package:flutter/material.dart';

class BadgeCount extends StatelessWidget {
  const BadgeCount({super.key});

  @override
  Widget build(BuildContext context) {
    int items = HomePage.itemsCart.length;
    // return Container(
    //   height: 10,
    //   width: 10,
    //   decoration: BoxDecoration(
    //     color: Theme.of(context).primaryColor,
    //     shape: BoxShape.circle
    //   ),
    // );

    return Positioned(
      right: 1,
      child: items > 0
          ? Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                // borderRadius: BorderRadius.circular(6),
                // border: Border.all(
                //   color: Colors.black87,
                //   width: 1,
                // ),
                shape: BoxShape.circle,
              ),
              constraints: const BoxConstraints(
                minWidth: 15,
                minHeight: 15,
              ),
              child: Text(
                items.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            )
          : const Text(''),
    );
  }
}
