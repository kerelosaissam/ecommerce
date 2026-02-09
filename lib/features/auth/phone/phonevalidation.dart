import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/auth/phone/otpscreen.dart';
import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:ecommerce/features/auth/widgets/reuseableend.dart';
import 'package:ecommerce/features/auth/widgets/textfieldmail.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 67.0, right: 23, left: 23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(),
                SizedBox(height: 40),
                Text("Enter your mobile number", style: Appstyles.tittle3),
                SizedBox(height: 16),
                Text(
                  "We need to verify you. We will send you a one\ntime verification code. ",
                  style: Appstyles.subtitlelight,
                ),
                SizedBox(height: 40),
                Tfieldmail(
                  text: "",
                  hintText: '01xxxxxxxxxx',
                  keyboardtype: TextInputType.phone,
                ),
                SizedBox(height: 45),
                    Button(nav2: () { 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Otpscreen()),
                    );
                  },
                   kind: "Next"),
                SizedBox(height: 40),
                Buttom(
                  logorsign: "Resend confirmation code (1:23)",
                  logorsign2: "",

                  nav: () {},
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
