import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/phone/phonevalidation.dart';
import 'package:ecommerce/features/auth/signin/signin.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/features/auth/widgets/passtextfield.dart';
import 'package:ecommerce/features/auth/widgets/reuseableend.dart';
import 'package:ecommerce/features/auth/widgets/textfieldmail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool onpress = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 67.0, right: 23, left: 23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/carror.svg',
                    width: 45,
                    height: 51,
                  ),
                ),
                SizedBox(height: 40),
                Text("Sign Up", style: Appstyles.tittle3),
                SizedBox(height: 16),
                Text(
                  "Enter your credentials to continue",
                  style: Appstyles.subtitlelight,
                ),
                SizedBox(height: 40),
                Tfieldmail(text: "Name", hintText: 'Aissam junior'),
                SizedBox(height: 13),
                Tfieldmail(text: "Email", hintText: 'example@gmail.com'),
                SizedBox(height: 13),
                Passtextfield(
                  text: "Password",
                  hintText: 'Enter your password',
                  isobscureText: onpress,
                  icon: onpress ? Icons.visibility_off : Icons.visibility,
                  ontap: () {
                    setState(() {
                      onpress = !onpress;
                    });
                  },
                ),
                
                SizedBox(height: 40,),
                    Button(nav2: () { 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Phone()),
                    );
                  },
                   kind: "Sign up", buttoncolor:  Appcolors.primaryColor,),
                   SizedBox(height: 20,),
                Buttom(
                  
                  logorsign: "Already have an account?",
                  logorsign2: "Login",
                  nav: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signin()),
                    );
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
