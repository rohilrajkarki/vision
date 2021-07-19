import 'package:flutter/material.dart';
import 'package:ying_yang/models/category.dart';
import 'package:ying_yang/models/category_part.dart';
import 'package:ying_yang/models/subcategory.dart';
import 'package:ying_yang/widgets/category_icon.dart';
import 'package:ying_yang/widgets/main_AppBar.dart';

class DetailsPage extends StatefulWidget {
  var subCategory;

  DetailsPage({this.subCategory});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/' +
                            widget.subCategory!.imgName +
                            '.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory!.color,
                            iconName: widget.subCategory!.icon,
                            size: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('This is one',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: widget.subCategory.color,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text('Rs 50.00/lb',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 100,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 20,
                                offset: Offset.zero,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('3',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ))),
                  MainAppBar(
                    themeColor: Colors.white,
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Selections here'),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.subCategory.parts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                //loop through each part
                                widget.subCategory.parts
                                    .forEach((CategoryPart part) {
                                  part.isSelected =
                                      widget.subCategory.parts[index] == part;
                                });
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(15),
                                  width: 120,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      border: widget.subCategory.parts[index]
                                              .isSelected
                                          ? Border.all(
                                              color: widget.subCategory.color,
                                              width: 7)
                                          : null,
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/' +
                                            widget.subCategory.parts[index]
                                                .imgName +
                                            '.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 10,
                                          offset: Offset.zero,
                                        )
                                      ]),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Text(
                                    widget.subCategory.parts[index].name,
                                    style: TextStyle(
                                      color: widget.subCategory.color,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
