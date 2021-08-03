import 'package:flutter/material.dart';
import 'package:ying_yang/helpers/utils.dart';
import 'package:ying_yang/models/Onboarding_content.dart';
import 'package:ying_yang/pages/details_page.dart';
import 'package:ying_yang/pages/onboarding_page.dart';
import 'package:ying_yang/pages/splash_page.dart';
import 'package:ying_yang/pages/welcome_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      home:
          // DetailsPage(
          // subCategory: Utils.getMockedCategories()[0].subCatogories![0]),
          SplashPage(duration: 1, goToPage: WelcomePage()),
      // OnboardingPage(),
    ),
  );
}
