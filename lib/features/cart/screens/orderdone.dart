import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/features/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDone extends StatelessWidget {
  const OrderDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [

              const Spacer(),

              SvgPicture.asset(
                "assets/sucsses.svg",
                width: 180,
                height: 180,
              ),

              const SizedBox(height: 40),

               Text(
                "Your Order has been\naccepted",
                textAlign: TextAlign.center,
                style: Appstyles.tittle3
              ),

              const SizedBox(height: 12),

               Text(
                "Your items has been placed and is on\nit's way to being processed",
                textAlign: TextAlign.center,
                style: Appstyles.greysamlltext
              ),

              const Spacer(),

            Button(nav2: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=>Home()));
            }, kind: "Go To Home", buttoncolor: Appcolors.primaryColor,),

              const SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}
