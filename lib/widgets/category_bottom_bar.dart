import 'package:flutter/material.dart';

class CategoryBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      height: 100,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: Colors.black.withOpacity(0.2),
          offset: Offset.zero,
        ),
      ]),
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.pin_drop,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
