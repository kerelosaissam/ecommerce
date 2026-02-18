import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/explore/models/catigorimodel.dart';
import 'package:ecommerce/features/explore/widgets/listview.dart';
import 'package:flutter/material.dart';

class Categori extends StatefulWidget {
   Categori({super.key});

  @override
  State<Categori> createState() => _CategoriState();
    final List<Categorimodel> products = [
    Categorimodel(
      name: "pepsi can",
      image: "assets/Beverages/p1.png",
      price: 4.99,
      weight: "7 ml",
    ),
    Categorimodel(
      name: "Dite Coke",
      image: "assets/Beverages/p2.png",
      price: 4.99,
      weight: "1 ml",
    ),
    Categorimodel(
      name: "Apple & Grape \nJuice",
      image: "assets/Beverages/p3.png",
      price: 4.99,
      weight: "1 ml",
    ),
    Categorimodel(
      name: "Spite can",
      image: "assets/Beverages/p4.png",
      price: 4.99,
      weight: "7 ml",
    ),
    Categorimodel(
      name: "coca cola can",
      image: "assets/Beverages/p5.png",
      price: 4.99,
      weight: "1 ml",
    ),
    Categorimodel(
      name: "Apple & Grape \nJuice",
      image: "assets/Beverages/p3.png",
      price: 4.99,
      weight: "1 ml",
    ),
    Categorimodel(
      name: "Spite can",
      image: "assets/Beverages/p4.png",
      price: 4.99,
      weight: "7 ml",
    ),
    Categorimodel(
      name: "coca cola can",
      image: "assets/Beverages/p5.png",
      price: 4.99,
      weight: "1 ml",
    ),
    Categorimodel(
      name: "Orenge Juice",
      image: "assets/Beverages/p6.png",
      price: 4.99,
      weight: "1 ml",
    ),
  ];
}

class _CategoriState extends State<Categori> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(16),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new) ),
        title: Text("Beverages",style: Appstyles.cardtittle,),
        centerTitle: true,
        actions: [
          Icon(Icons.tune,color: Appcolors.blackcolor,)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Catigorigridview(items: widget.products, title: "Beverages",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}