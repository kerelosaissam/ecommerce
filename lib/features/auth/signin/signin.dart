import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/phone/phonevalidation.dart';
import 'package:ecommerce/features/auth/signup/signup.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/features/auth/widgets/passtextfield.dart';
import 'package:ecommerce/features/auth/widgets/reuseableend.dart';
import 'package:ecommerce/features/auth/widgets/textfieldmail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
                Text("Login", style: Appstyles.tittle3),
                SizedBox(height: 16),
                Text(
                  "Enter your emails and password",
                  style: Appstyles.subtitlelight,
                ),
                SizedBox(height: 40),
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
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: Appstyles.textfieldtext,
                    ),
                  ),
                ),
                SizedBox(height: 40,),

                Button(nav2: () { 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Phone()),
                    );
                  },
                   kind: "Log in"),
                   SizedBox(height: 20,),
                Buttom(
                  
                  logorsign: "Don't have an account?",
                  logorsign2: "Singup",
                  nav: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
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
