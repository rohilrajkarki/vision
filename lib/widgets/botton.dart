import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  String label;
  Function onClick;
  Color whatcolor;

  ThemeButton(
      {required this.label, required this.onClick, required this.whatcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: Material(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: InkWell(
            onTap: () {
              this.onClick();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: this.whatcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    this.label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
