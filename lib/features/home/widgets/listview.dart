import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/home/models/productmodel.dart';
import 'package:ecommerce/features/home/widgets/card2.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  final List<ProductModel> items;

  final String title;

  const ProductListView({super.key, required this.items, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Appstyles.bigtittle),
            Text("see all", style: Appstyles.seeall),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 225,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ProductCard(product: items[index]);
            },
          ),
        ),
      ],
    );
  }
}
