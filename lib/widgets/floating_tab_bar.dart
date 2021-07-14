import 'package:flutter/material.dart';

class FloatingTabBar extends StatelessWidget {
  const FloatingTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.upload,
            color: Colors.grey,
          ),
          Icon(
            Icons.alt_route_rounded,
            color: Colors.grey,
          ),
          Icon(
            Icons.home,
            color: Colors.pink,
          ),
          Icon(
            Icons.wallet_giftcard,
            color: Colors.grey,
          ),
          Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
