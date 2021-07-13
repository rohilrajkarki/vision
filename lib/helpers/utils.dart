import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ying_yang/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: Color(0xFF64C038),
        name: "1test1",
        imgName: 'welcome_leaf',
        subCatogories: [],
        icon: 'd',
      ),
      Category(
        color: Color(0xFF80B038),
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
        color: Color(0xFF80E038),
        name: "4fasdtestt",
        imgName: 'valley',
        subCatogories: [],
        icon: 'f',
      ),
      Category(
        color: Color(0xFF80B038),
        name: "2tasdestt2",
        imgName: 'welcome',
        subCatogories: [],
        icon: 'e',
      ),
    ];
  }
}
