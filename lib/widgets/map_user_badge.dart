import 'package:flutter/material.dart';

class MapUserBadge extends StatelessWidget {
  final bool isSelected;

  MapUserBadge({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: this.isSelected ? Colors.green : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset.zero,
            )
          ]),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage("assets/images/ying_yang.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Position",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text("My Location",
                  style: TextStyle(
                    color: this.isSelected ? Colors.white : Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
            ],
          )),
          Icon(
            Icons.location_pin,
            color: this.isSelected ? Colors.white : Colors.green,
            size: 40,
          )
        ],
      ),
    );
  }
}
