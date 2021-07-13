import 'package:flutter/material.dart';

import 'package:ying_yang/models/category.dart';
import 'package:ying_yang/widgets/category_icon.dart';

class CategoryCard extends StatelessWidget {
  final Category? category;
  final Function? onCardClick;

  //constructor taki can be injected from the outside
  CategoryCard({this.category, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onCardClick!();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/' + this.category!.imgName + '.jpg'),
              fit: BoxFit.cover),
        ),
        height: 150,
        margin: EdgeInsets.all(20),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CategoryIcon(
                      color: this.category!.color,
                      iconName: this.category!.icon,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      this.category!.name!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
