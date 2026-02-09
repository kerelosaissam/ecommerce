import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
    final VoidCallback nav2;
    final String kind;
  const Button({super.key, required this.nav2, required this.kind});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              nav2();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Appcolors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: Text(kind, style: Appstyles.buttontext),
          ),
        );
  }
}