import 'package:flutter/material.dart';
import 'package:ying_yang/widgets/category_icon.dart';

class MapBottomPill extends StatelessWidget {
  const MapBottomPill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset.zero,
              )
            ]),
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/valley.jpg",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: CategoryIcon(
                        color: Colors.green,
                        iconName: "d",
                        size: 15,
                        padding: 5,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("a name",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text('This is here'),
                      Text('2km de distancia', style: TextStyle())
                    ],
                  ),
                ),
                Icon(Icons.location_pin, color: Colors.red, size: 50),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/welcome_leaf.jpg'),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.red, width: 4)),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jose Gonzalez',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Autopista Duarte\nCarretera Duarte Vieja #225')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}
