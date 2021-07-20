import 'package:flutter/material.dart';

class UnitPriceWidget extends StatefulWidget {
  int amount = 0;
  double price = 20.00;
  double cost = 0.0;

  @override
  _UnitPriceWidgetState createState() => _UnitPriceWidgetState();
}

class _UnitPriceWidgetState extends State<UnitPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Unit: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              TextSpan(
                  text: 'asdf',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red)),
            ],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset.zero,
                color: Colors.black.withOpacity(0.1),
              )
            ]),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.amount++;
                  widget.cost = widget.price * widget.amount;
                });
              },
              child: Icon(
                Icons.add_circle_outline,
                size: 50,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: widget.amount.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        TextSpan(
                          text: 'quantity',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.amount--;
                  widget.cost = widget.price * widget.amount;
                });
              },
              child: Icon(Icons.remove_circle_outline,
                  size: 50, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Price: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: '${widget.price}/unit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
            Text(
              '${widget.cost}',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            )
          ],
        ),
      ),
    ]);
  }
}
