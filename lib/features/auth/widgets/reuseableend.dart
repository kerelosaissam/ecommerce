import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  final String logorsign;
  final String? logorsign2;
  final VoidCallback nav;


  const Buttom({
    super.key,
    required this.logorsign,
    required this.logorsign2,
    required this.nav,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(logorsign, style: Appstyles.textfieldtext),
            SizedBox(width: 6),

            GestureDetector(
              onTap: () {
                nav();
              },
              child: Text(
                logorsign2 ?? '',
                style: Appstyles.subtitlelbold.copyWith(
                  color: Appcolors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
