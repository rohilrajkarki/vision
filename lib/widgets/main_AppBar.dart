import 'package:flutter/material.dart';

import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;
  bool showProfilePic;

  MainAppBar(
      {this.themeColor = const Color(0xFF80C038), this.showProfilePic = true});

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
      iconTheme: IconThemeData(color: widget.themeColor),
      title: IconFont(
        color: widget.themeColor,
        size: 40,
        iconName: 'a',
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Opacity(
          opacity: widget.showProfilePic ? 1 : 0,
          child: Container(
            child: Image.asset('assets/images/ying_yang.png'),
          ),
        )
      ],
    );
  }
}
