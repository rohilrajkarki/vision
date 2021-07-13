import 'package:flutter/material.dart';
import 'package:ying_yang/pages/categorylistpage.dart';
import 'package:ying_yang/pages/splash_page.dart';
import 'package:ying_yang/pages/welcome_pages.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Raleway'),
    home:
        //CategoryListPage()
        SplashPage(duration: 1, goToPage: WelcomePage()),
  ));
}
