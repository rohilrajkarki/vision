import 'package:flutter/material.dart';

import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _MainAppBarState createState() => _MainAppBarState();

//overide the preffered sized getter to return a predfined size
  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: IconFont(
        color: Colors.greenAccent,
        size: 40,
        iconName: 'a',
      ),
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          child: Image.asset('assets/images/ying_yang.png'),
        )
      ],
    );
  }
}
