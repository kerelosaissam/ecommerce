import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/features/cart/models/cartmodel.dart';
import 'package:ecommerce/features/cart/screens/orderdone.dart';
import 'package:ecommerce/features/cart/widgets/cont.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  List<CartModel> products = [
    CartModel(
      name: "Bell Pepper Red",
      subtitle: "1kg",
      image: "assets/flfl.png",
      price: 4.99,
    ),
    CartModel(
      name: "Organic Bananas",
      subtitle: "12kg, Price",
      image: "assets/apple.png",
      price: 3.00,
    ),
    CartModel(
      name: "Ginger",
      subtitle: "250gm, Price",
      image: "assets/ginger.png",
      price: 2.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: Appstyles.bigtittle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Appcolors.whitecolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(product.image, width: 70),
                      const SizedBox(width: 15),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              product.subtitle,
                              style: Appstyles.subtitlelight,
                            ),
                            const SizedBox(height: 10),

                            Row(
                              children: [
                                ReusableContainer(
                                  icon: Icons.remove,
                                  dra: Appcolors.greycolor,
                                ),
                                SizedBox(width: 10),
                                Text("1", style: Appstyles.cardprice),
                                SizedBox(width: 10),
                                ReusableContainer(
                                  icon: Icons.add,
                                  dra: Appcolors.primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          Icon(Icons.close, color: Appcolors.greycolor),
                          SizedBox(height: 30),
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Button(
              nav2: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      height: 720,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Checkout", style: Appstyles.bigtittle),
                              Icon(Icons.close),
                            ],
                          ),

                          const SizedBox(height: 14),
                          Divider(color: Appcolors.subergrey,thickness: 0.2,),
                          const SizedBox(height: 14),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery", style: Appstyles.snakbar),
                              Row(
                                children: const [
                                  Text("Select Method"),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_ios, size: 16),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),

                          Divider(color: Appcolors.subergrey,thickness: 0.2,),

                          const SizedBox(height: 14),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Payment", style: Appstyles.snakbar),
                              Row(
                                children: [
                                  ImageIcon(AssetImage("assets/card.png")),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_ios, size: 16),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),
                          Divider(color: Appcolors.subergrey,thickness: 0.2,),
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Promo Code",
                                style: Appstyles.snakbar,
                              ),
                              Row(
                                children: const [
                                  Text("Pick discount"),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_ios, size: 16),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),
                          Divider(color: Appcolors.subergrey,thickness: 0.2,),
                          const SizedBox(height: 14),

                          /// Total
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text(
                                "Total Cost",
                                style: Appstyles.snakbar,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$13.97",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_ios, size: 16),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),
                          Divider(color: Appcolors.subergrey,thickness: 0.2,),
                          const SizedBox(height: 14),
                          Text(
                            "By placing an order you agree to our Terms And Conditions",
                            style: Appstyles.subtitlelight,
                          ),

                          const Spacer(),

                        Button(nav2: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDone()));
                        }, kind: 'Place Order', buttoncolor: Appcolors.primaryColor,)
                        ],
                      ),
                    );
                  },
                );
              },
              kind: "Go to Checkout", buttoncolor: Appcolors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
