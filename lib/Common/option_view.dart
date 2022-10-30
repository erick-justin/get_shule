import 'dart:ui';

import 'package:flutter/material.dart';

class OptionView extends StatelessWidget {
  Color color;
  String header;
  double padding;
  Color textColor;
  double outsidepadding;
  double radius;
  FontWeight weight;

  OptionView(this.color, this.header,
      {this.padding = 8,
        this.textColor = Colors.white,
        this.radius = 15,
        this.outsidepadding = 8.0,
        this.weight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(outsidepadding),
      child: Card(
        elevation: 5,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(radius)),
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          child: Text(header,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor,
                  fontWeight: weight,
                  fontSize: 15)),
        ),
      ),
    );
  }
}
