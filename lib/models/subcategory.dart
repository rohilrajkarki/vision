import 'package:flutter/material.dart';
import 'package:ying_yang/models/category.dart';

//since dart le inheritance allow garxa we derive subcategory from category
class SubCategory extends Category {
  SubCategory({
    String? name,
    String? icon,
    Color? color,
    String? imgName,
  }) : super(
          //super to refer to the immediate parent class and transfer the same values
          name: name,
          icon: icon!,
          color: color,
          imgName: imgName!,
        );
}
