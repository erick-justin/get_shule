

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class InputFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  void Function(String)? onChanged;
  TextInputType? keyboardType;
  Widget? icon;
  Function(String?)? onSaved;
  InputFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.icon,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,

      decoration: InputDecoration(
        suffixIcon: icon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.urbanist(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: const Color(0xffABABAB),
        ),
        labelStyle: GoogleFonts.urbanist(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          color: Colors.black,
        ),
      ),
    );
  }
}
