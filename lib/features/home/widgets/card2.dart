import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/home/models/productmodel.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Appcolors.whitecolor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Appcolors.blackcolor,
          
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            child: Image.asset(
              product.image,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 6),

          Text(product.name, style: Appstyles.cardtittle),

          Text(product.weight, style: Appstyles.greysamlltext),

          const Spacer(), 

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${product.price}"),

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
    );
  }
}
