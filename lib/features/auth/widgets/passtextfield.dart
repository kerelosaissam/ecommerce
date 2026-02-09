import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:flutter/material.dart';

class Passtextfield extends StatelessWidget {
  final String text;
  final String hintText;
  final bool isobscureText;
  final IconData icon;
  final VoidCallback ontap;

  const Passtextfield({
    super.key,
    required this.text,
    required this.hintText,
    required this.isobscureText,
    required this.ontap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Appstyles.subtitlelbold),
        SizedBox(height: 6),
        TextField(
          obscureText: isobscureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: ontap, icon: Icon(icon)),
            hintText: hintText,
            hintStyle: Appstyles.textfieldtext,
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
