import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/explore/widgets/card.dart';
import 'package:ecommerce/features/auth/widgets/textfieldmail.dart';
import 'package:ecommerce/features/explore/models/categorimodel.dart';
import 'package:flutter/material.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  final List<CategoryModel> categories = [
    CategoryModel(
      title: 'Fresh Fruits\n& Vegetable',
      image: 'assets/categoris/Fruits.png', 
      bgColor: Color(0xffE9F8F0),
      borderColor: Color(0xff53B175),
    ),
    CategoryModel(
      title: 'Cooking Oil\n& Ghee',
      image: 'assets/categoris/Cooking Oil & Ghee.png',
      bgColor: Color(0xffFFF3E8),
      borderColor: Color(0xffF8A44C),
    ),
    CategoryModel(
      title: 'Meat & Fish',
      image: 'assets/categoris/Meat & Fish.png',
      bgColor: Color(0xffFDECEC),
      borderColor: Color(0xffF7A593),
    ),
    CategoryModel(
      title: 'Bakery & Snacks',
      image: 'assets/categoris/Bakery & Snacks.png',
      bgColor: Color(0xffF4EBF7),
      borderColor: Color(0xffD3B0E0),
    ),
    CategoryModel(
      title: 'Fresh Fruits\n& Vegetable',
      image: 'assets/categoris/Fruits.png', 
      bgColor: Color(0xffE9F8F0),
      borderColor: Color(0xff53B175),
    ),
    CategoryModel(
      title: 'Cooking Oil\n& Ghee',
      image: 'assets/categoris/Cooking Oil & Ghee.png',
      bgColor: Color(0xffFFF3E8),
      borderColor: Color(0xffF8A44C),
    ),
    CategoryModel(
      title: 'Meat & Fish',
      image: 'assets/categoris/Meat & Fish.png',
      bgColor: Color(0xffFDECEC),
      borderColor: Color(0xffF7A593),
    ),
    CategoryModel(
      title: 'Bakery & Snacks',
      image: 'assets/categoris/Bakery & Snacks.png',
      bgColor: Color(0xffF4EBF7),
      borderColor: Color(0xffD3B0E0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Find Products", style: Appstyles.tittle3),
                Tfieldmail(hintText: "Search store", icon: Icons.search),
                SizedBox(height: 25),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    final item = categories[index];
                    return CategoryCard(item: item);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
