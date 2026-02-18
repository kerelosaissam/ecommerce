import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/explore/models/catigorimodel.dart';
import 'package:ecommerce/features/explore/screens/detailscreen.dart';
import 'package:flutter/material.dart';

class Categoricard extends StatelessWidget {
  final Categorimodel product;
  const Categoricard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Detailscreen(product: product),
        ));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Appcolors.whitecolor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Appcolors.blackcolor.withValues(alpha: .099),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 80,
                child: Hero(
                  tag: product.image,
                  child: Image.asset(product.image, fit: BoxFit.contain),
                ),
              ),
            ),
      
            const SizedBox(height: 6),
      
            Text(product.name, style: Appstyles.cardtittle),
      
            Text(product.weight, style: Appstyles.greysamlltext),
      
            const Spacer(),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${product.price}", style: Appstyles.cardprice),
      
                Container(
                  decoration: BoxDecoration(
                    color: Appcolors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add, size: 22),
                    color: Appcolors.whitecolor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
