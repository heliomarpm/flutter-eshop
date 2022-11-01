import 'package:eshop/widgets/badge_count.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{
        Navigator.pushNamed(context, '/cart')
      },
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
        child: Stack(
          children: const [
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
