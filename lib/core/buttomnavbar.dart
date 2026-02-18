import 'package:ecommerce/core/appcolors.dart';
import 'package:ecommerce/core/appstyles.dart';
import 'package:ecommerce/features/home/screens/home.dart';
import 'package:ecommerce/features/profile/accountscreen.dart';
import 'package:ecommerce/features/cart/screens/cartscreen.dart';
import 'package:ecommerce/features/explore/screens/explorescreen.dart';
import 'package:ecommerce/features/favourite/favouritescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    Home(),
    Explorescreen(),
    Cartscreen(),
    Favouritescreen(),
    Accountscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Appcolors.blackcolor.withValues(alpha: 0.1),
              blurRadius: 12,
              offset: const Offset(0, -3),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedLabelStyle: Appstyles.botnav,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Appcolors.primaryColor,
          unselectedItemColor: Appcolors.blackcolor,
          elevation: 0,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            buildItem('Shop', 'assets/store.svg', 0),
            buildItem('Explore', 'assets/search.svg', 1),
            buildItem('Cart', 'assets/shop.svg', 2),
            buildItem('Favourite', 'assets/fav.svg', 3),
            buildItem('Account', 'assets/profile.svg', 4),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildItem(String label, String asset, int index) {
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(
        asset,
        height: 24,
        colorFilter: ColorFilter.mode(
          currentIndex == index ? Appcolors.primaryColor : Appcolors.blackcolor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
