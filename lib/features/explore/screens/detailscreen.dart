import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/features/cart/screens/cartscreen.dart';
import 'package:ecommerce/features/explore/models/catigorimodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detailscreen extends StatelessWidget {
  final Categorimodel product;

  const Detailscreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Appcolors.blackcolor),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/share.svg',
              width: 18,
              height: 18,
              colorFilter: ColorFilter.mode(
                Appcolors.blackcolor,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(product.image, fit: BoxFit.contain),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(product.name, style: Appstyles.bigtittle),
                  ),
                  Icon(Icons.favorite_border, color: Appcolors.subergrey),
                ],
              ),

              const SizedBox(height: 6),

              Text(product.weight, style: Appstyles.subtitlelight),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.remove, color: Color(0xffB3B3B3)),

                      const SizedBox(width: 10),

                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Icon(Icons.add, color: Appcolors.primaryColor),
                    ],
                  ),

                  Text('\$${product.price}', style: Appstyles.pricedetail),
                ],
              ),

              const SizedBox(height: 20),

              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(),
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
                  iconColor: Appcolors.blackcolor,
                  collapsedIconColor: Appcolors.blackcolor,
                  title: Text('Product Detail', style: Appstyles.cardtittle),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.',
                        style: Appstyles.greysamlltext.copyWith(
                          color: Appcolors.subergrey,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(color: Colors.grey.shade400),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nutritions',
                      style: Appstyles.cardtittle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Appcolors.textfield,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('100gr', style: Appstyles.subtitlelight),
                        ),

                        const SizedBox(width: 8),

                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade400),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Review',
                      style: Appstyles.cardtittle.copyWith(fontSize: 18),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 22,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Color(0xffF3603F),
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_forward_ios_outlined),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

SizedBox(height: 17,),              
              Button(
                nav2: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cartscreen()),
                  );
                },
                kind: "Add to cart", buttoncolor:  Appcolors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
