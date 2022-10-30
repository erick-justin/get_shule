
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelWidget extends StatelessWidget {
  final String labelText;

  const LabelWidget({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,

    );
  }
}
