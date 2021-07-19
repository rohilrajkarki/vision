import 'package:flutter/material.dart';
import 'package:ying_yang/helpers/utils.dart';
import 'package:ying_yang/pages/details_page.dart';
import 'package:ying_yang/pages/splash_page.dart';
import 'package:ying_yang/pages/welcome_pages.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Raleway'),
    home:
        //CategoryListPage()
        SplashPage(duration: 1, goToPage: WelcomePage()),
        // DetailsPage(
        //     subCategory: Utils.getMockedCategories()[0].subCatogories![0]),
  ));
}
