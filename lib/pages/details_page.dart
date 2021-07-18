import 'package:flutter/material.dart';
import 'package:ying_yang/models/subcategory.dart';
import 'package:ying_yang/widgets/main_AppBar.dart';

class DetailsPage extends StatelessWidget {
  SubCategory? subCategory;

  DetailsPage({this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      // body: Center(
      // child: Text(this.subCategory!.name),
      // ),
    );
  }
}
