import 'package:ecommerce/features/explore/models/catigorimodel.dart';
import 'package:ecommerce/features/explore/widgets/card3.dart';
import 'package:flutter/material.dart';

class Catigorigridview extends StatelessWidget {
  final List<Categorimodel> items;
  final String title;

  const Catigorigridview({
    super.key,
    required this.items,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.75, 
          ),
          itemBuilder: (context, index) {
            return Categoricard(product: items[index]);
          },
        ),
      ],
    );
  }
}
