import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/widgets/textfieldmail.dart';
import 'package:ecommerce/features/home/models/productmodel.dart';
import 'package:ecommerce/features/home/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
   const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ProductModel> products = [
    ProductModel(
      name: "Bananas",
      image: "assets/apple.png",
      price: 4.99,
      weight: "7 pcs",
    ),
    ProductModel(
      name: "Red Apple",
      image: "assets/flfl.png",
      price: 4.99,
      weight: "1 kg",
    ),
    ProductModel(
      name: "Ginger",
      image: "assets/ginger.png",
      price: 4.99,
      weight: "1 kg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/carror.svg',
                    width: 50,
                    height: 60,
                    colorFilter: ColorFilter.mode(
                      Appcolors.primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 14),

                  Text(
                    "GreenMart",
                    style: Appstyles.tittle2.copyWith(
                      color: Appcolors.primaryColor,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              Tfieldmail(hintText: "Search store", icon: Icons.search),

              SizedBox(height: 25),

              ProductListView(items: products, title: 'Exclusive Offer'),
              SizedBox(height: 30),
              ProductListView(items: products, title: 'Best Selling'),
            ],
          ),
        ),
      ),
    );
  }
}
