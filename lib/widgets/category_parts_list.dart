import 'package:flutter/material.dart';
import 'package:ying_yang/models/category_part.dart';

class CategoryPartsList extends StatefulWidget {
  var subCategory;

  CategoryPartsList({this.subCategory});

  @override
  _CategoryPartsListState createState() => _CategoryPartsListState();
}

class _CategoryPartsListState extends State<CategoryPartsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text('Selections here',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
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
                      widget.subCategory.parts.forEach((CategoryPart part) {
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
                            border: widget.subCategory.parts[index].isSelected
                                ? Border.all(
                                    color: widget.subCategory.color, width: 7)
                                : null,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage('assets/images/' +
                                  widget.subCategory.parts[index].imgName +
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
        ),
      ],
    );
  }
}
