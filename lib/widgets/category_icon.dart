import 'package:flutter/material.dart';
import 'package:ying_yang/widgets/iconfont.dart';

class CategoryIcon extends StatelessWidget {
  Color? color;
  String? iconName;
  double size;
  double padding;

  CategoryIcon({this.color, this.iconName, this.size = 30, this.padding = 10});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: this.color,
        padding: EdgeInsets.all(10),
        child: IconFont(
          color: Colors.white,
          size: 30,
          iconName: this.iconName!,
        ),
      ),
    );
  }
}
