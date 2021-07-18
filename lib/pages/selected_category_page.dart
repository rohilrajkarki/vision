import 'package:flutter/material.dart';
import 'package:ying_yang/models/category.dart';
import 'package:ying_yang/pages/details_page.dart';
import 'package:ying_yang/widgets/category_icon.dart';
import 'package:ying_yang/widgets/main_AppBar.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category? selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8),
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
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    this.selectedCategory!.name!.length,
                    (index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage()));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/' +
                                        this
                                            .selectedCategory!
                                            .subCatogories![index]
                                            .imgName +
                                        '.jpg',
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    this
                                        .selectedCategory!
                                        .subCatogories![index]
                                        .name!,
                                    style: TextStyle(
                                      color: this.selectedCategory!.color,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                          ),
                        )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
