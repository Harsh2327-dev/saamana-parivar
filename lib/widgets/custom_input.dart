import 'package:flutter/material.dart';
import 'package:saamana_parivar/constants.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  CustomInput({this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(12.0),
      ),

      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText ?? "Hint Text...",
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 18.0,
          ),
        ),
        style: Constants.regularDarkText,
      ),
    );
  }
}
