import 'package:flutter/material.dart';
import 'package:ying_yang/models/category.dart';
import 'package:ying_yang/widgets/category_icon.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category? selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectedCategory!.color,
                  iconName: this.selectedCategory!.icon,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(this.selectedCategory!.name!,
                    style: TextStyle(
                      color: this.selectedCategory!.color,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  this.selectedCategory!.name!.length,
                  (index) => Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/' +
                                  this.selectedCategory!.imgName +
                                  '.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            )
                          ],
                        ),
                      )),
            ))
          ],
        ),
      ),
    );
  }
}
