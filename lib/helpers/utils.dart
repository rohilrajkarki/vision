import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ying_yang/models/category.dart';
import 'package:ying_yang/models/subcategory.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: Color(0xFF00bfff),
        name: "1test1",
        imgName: 'welcome_leaf',
        icon: 'd',
        subCatogories: [
          SubCategory(
            color: Color(0xFF00bfff),
            name: "hsd",
            imgName: 'welcome',
            icon: 'a',
          ),
          SubCategory(
            color: Color(0xFF00bfff),
            name: "jh",
            imgName: 'welcome_leaf',
            icon: 'a',
          ),
          SubCategory(
            color: Color(0xFF00bfff),
            name: "sjf",
            imgName: 'welcome_leaf',
            icon: 'a',
          ),
          SubCategory(
            color: Color(0xFF00bfff),
            name: "jkgttd",
            imgName: 'valley',
            icon: 'a',
          ),
          SubCategory(
            color: Color(0xFF00bfff),
            name: "hs.kddd",
            imgName: 'welcome',
            icon: 'a',
          ),
          SubCategory(
            color: Color(0xFF00bfff),
            name: "aasdfhsd",
            imgName: 'valley',
            icon: 'a',
          ),
        ],
      ),
      Category(
        color: Color(0xFFffff00),
        name: "2tasdestt2",
        imgName: 'welcome',
        subCatogories: [],
        icon: 'e',
      ),
      Category(
        color: Color(0xFF80D038),
        name: "3asdatestt3",
        imgName: 'welcome_leaf',
        subCatogories: [],
        icon: 'c',
      ),
      Category(
        color: Color(0xFFff00ff),
        name: "4fasdtestt",
        imgName: 'valley',
        subCatogories: [],
        icon: 'f',
      ),
      Category(
        color: Color(0xFF808080),
        name: "2tasdestt2",
        imgName: 'welcome',
        subCatogories: [],
        icon: 'e',
      ),
    ];
  }
}
