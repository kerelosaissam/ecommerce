import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:flutter/material.dart';

class Tfieldmail extends StatelessWidget {
  final String? text;
  final String? hintText;
  final IconData? icon;
  final TextInputType? keyboardtype;
  const Tfieldmail({
    super.key,
    this.text,
    this.hintText,
    this.keyboardtype,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text ?? "", style: Appstyles.subtitlelbold),
        SizedBox(height: 6),
        TextField(
          keyboardType: keyboardtype,
          decoration: InputDecoration(
            hintText: hintText,
          prefixIconColor: Appcolors.blackcolor,
            prefixIcon: icon != null ? Icon(icon) : null,

            hintStyle: Appstyles.textfieldtext,
            enabled: false, 

            filled: true,
            fillColor: Appcolors.textfield,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.2),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
