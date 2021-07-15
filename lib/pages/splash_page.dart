import 'package:flutter/material.dart';
import 'package:ying_yang/helpers/iconhelper.dart';
import 'package:ying_yang/widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  final int? duration;
  final Widget? goToPage;

  SplashPage({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration!), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage!));
    });

    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        color: Colors.green,
        alignment: Alignment.center,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}
