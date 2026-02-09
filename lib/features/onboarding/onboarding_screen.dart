import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/onbording.jpg",
            fit: BoxFit.cover,
            alignment: const Alignment(0.2, -0.3),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/carror.svg',
                      width: 45,
                      height: 51,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),

                    SizedBox(height: 35),

                    Text(
                      "Welcome \n To Our Store",
                      textAlign: TextAlign.center,
                      style: Appstyles.tittle1,
                    ),
                    SizedBox(height: 7.3),
                    Text(
                      "Ger your groceries in as fast as one hour",
                      style: Appstyles.greysamlltext,
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolors.primaryColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signin()),
                          );
                        },
                        child: Text("get started", style: Appstyles.buttontext),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
