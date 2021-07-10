import 'package:flutter/material.dart';

import 'pages/splash_page.dart';
import 'pages/welcome_pages.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 1, goToPage: WelcomePage()),
    theme: ThemeData(fontFamily: 'Raleway'),
  ));
}
