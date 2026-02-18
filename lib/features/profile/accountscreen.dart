import 'package:ecommerce/features/auth/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  Widget buildMenuItem({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Appcolors.blackcolor),
          title: Text(title, style: Appstyles.cardtittle),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          ),
          onTap: onTap,
        ),
        Divider(color: Appcolors.subergrey, thickness: 0.2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/ana.jpeg"),
                      ),
            
                      SizedBox(width: 15),
            
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Kero", style: Appstyles.bigtittle),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: Appcolors.primaryColor,
                                ),
                              ],
                            ),
            
                            SizedBox(height: 4),
            
                            Text(
                              "kerelosaissam@gmail.com",
                              style: Appstyles.subtitlelight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            
                Divider(color: Appcolors.subergrey, thickness: 0.2),
                buildMenuItem(icon: Icons.shopping_bag_outlined, title: "Orders"),
                buildMenuItem(icon: Icons.person_outline, title: "My Details"),
                buildMenuItem(
                  icon: Icons.location_on_outlined,
                  title: "Delivery Address",
                ),
                buildMenuItem(
                  icon: Icons.credit_card_outlined,
                  title: "Payment Methods",
                ),
                buildMenuItem(
                  icon: Icons.local_offer_outlined,
                  title: "Promo Card",
                ),
                buildMenuItem(
                  icon: Icons.notifications_none,
                  title: "Notifications",
                ),
                buildMenuItem(icon: Icons.help_outline, title: "Help"),
                buildMenuItem(icon: Icons.info_outline, title: "About"),
                SizedBox(height: 5,),
                Button(nav2: (){}, kind: "LogOut", buttoncolor: Appcolors.logout,textColor: Appcolors.primaryColor,)
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
