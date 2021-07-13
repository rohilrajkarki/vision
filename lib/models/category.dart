import 'package:flutter/widgets.dart';

class Category {
  String? name;
  String icon;
  Color? color;
  late String imgName;

  List<Category>? subCatogories;

  //constructer with named argument to hydrate the model

  Category({
    this.name,
    required this.icon,
    this.color,
    required this.imgName,
    this.subCatogories,
  });
}
