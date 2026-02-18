import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/core/buttomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: Appstyles.greysamlltext,
      decoration: BoxDecoration(
        color: Appcolors.pinput,
        borderRadius: BorderRadius.circular(12),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 67.0, right: 26, left: 26),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text("Enter verification code", style: Appstyles.tittle3),
                SizedBox(height: 16),
                Text(
                  "We have sent SMS to: 01XXXXXXXXXX ",
                  style: Appstyles.subtitlelight,
                ),
                SizedBox(height: 30),
                Center(
                  child: Pinput(
                    length: 5,
                    keyboardType: TextInputType.number,
                    showCursor: true,
                    defaultPinTheme: defaultPinTheme,
                    separatorBuilder: (index) => const SizedBox(width: 12),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend OTP",
                        style: Appstyles.subtitlelbold.copyWith(
                          color: Appcolors.orangecolor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Change Phone Number",
                        style: Appstyles.subtitlelight.copyWith(
                          color: Appcolors.greycolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Button(nav2: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNav()), (route) => false);
                }, kind: "Confirm", buttoncolor: Appcolors.primaryColor,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
