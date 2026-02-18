import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/favourite/models/favourite_model.dart';
import 'package:flutter/material.dart';

class FavouriteItem extends StatelessWidget {
  final FavouriteModel item;

  const FavouriteItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          child: Row(
            children: [
              SizedBox(
                width: 55,
                height: 55,
                child: Image.asset(
                  item.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: Appstyles.cardtittle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.subtitle,
                      style: Appstyles.subtitlelight,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '\$${item.price.toStringAsFixed(2)}',
                    style: Appstyles.cardprice,
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.chevron_right,
                    color: Appcolors.blackcolor,
                    size: 22,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey.shade200,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
