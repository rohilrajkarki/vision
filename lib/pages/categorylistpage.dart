import 'package:flutter/material.dart';
import 'package:ying_yang/helpers/utils.dart';
import 'package:ying_yang/models/category.dart';
import 'package:ying_yang/pages/selected_category_page.dart';
import 'package:ying_yang/widgets/category_bottom_bar.dart';
import 'package:ying_yang/widgets/category_card.dart';
import 'package:ying_yang/widgets/iconfont.dart';

class CategoryListPage extends StatelessWidget {
  //member variable to hold the reference to the list of cateogries
  final List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
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
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Center(
                  child: Text(
                    'Cateogory selection',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    //item builder call back method ho
                    child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 120),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoryPage(),
                            ));
                      },
                    );
                  },
                ))
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CategoryBottomBar(),
            )
          ],
        ),
      ),
    );
  }
}
