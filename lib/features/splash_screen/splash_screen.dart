import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      if (!mounted) return;
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => OnboardingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SvgPicture.asset(
                      'assets/carror.svg',
                      width: 50,
                      height: 60,
                      colorFilter:  ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
            SizedBox(width: 14.5),
            Text(
              "GreenMart",
              style: Appstyles.tittle2
            ),
          ],
        ),
      ),
    );
  }
}
