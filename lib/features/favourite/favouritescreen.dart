import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/favourite/models/favourite_model.dart';
import 'package:ecommerce/features/favourite/widgets/favourite_item.dart';
import 'package:flutter/material.dart';

class Favouritescreen extends StatefulWidget {
  const Favouritescreen({super.key});

  @override
  State<Favouritescreen> createState() => _FavouritescreenState();
}

class _FavouritescreenState extends State<Favouritescreen> {
  final List<FavouriteModel> favourites = [
    FavouriteModel(
      name: 'Sprite Can',
      subtitle: '325ml, Price',
      image: 'assets/Beverages/p1.png',
      price: 1.50,
    ),
    FavouriteModel(
      name: 'Diet Coke',
      subtitle: '355ml, Price',
      image: 'assets/Beverages/p2.png',
      price: 1.99,
    ),
    FavouriteModel(
      name: 'Apple & Grape Juice',
      subtitle: '2L, Price',
      image: 'assets/Beverages/p3.png',
      price: 15.50,
    ),
    FavouriteModel(
      name: 'Coca Cola Can',
      subtitle: '325ml, Price',
      image: 'assets/Beverages/p4.png',
      price: 4.99,
    ),
    FavouriteModel(
      name: 'Pepsi Can',
      subtitle: '330ml, Price',
      image: 'assets/Beverages/p5.png',
      price: 4.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.whitecolor,
      appBar: AppBar(
        backgroundColor: Appcolors.whitecolor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Favoururite',
          style: Appstyles.bigtittle,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.shade200,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                return FavouriteItem(item: favourites[index]);
              },
            ),
          ),
          // Add All To Cart button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Add All To Cart',
                  style: Appstyles.buttontext,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}