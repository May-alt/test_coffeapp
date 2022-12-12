import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/ui/pages/cart/cart.dart';
import 'package:test_coffeapp/ui/pages/favorite/favorite.dart';
import 'package:test_coffeapp/ui/pages/home/home.dart';
import 'package:test_coffeapp/ui/pages/profile/profil.dart';
import 'package:test_coffeapp/ui/pages/setting/setting.dart';


class RouteBottomNavigationBar extends StatefulWidget {
  const RouteBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<RouteBottomNavigationBar> createState() => _RouteBottomNavigationBarState();
}

class _RouteBottomNavigationBarState extends State<RouteBottomNavigationBar> {

  int currentIndex = 0;
  final tabs = [
    // FavoritScreen(),

    HomeScreen(),
    CartScreen(),
    Favorite(),
    //ProfilScreen(),
    SettingPages(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          selectedItemColor:violet,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30.0,
          onTap: (index){
          setState(() {
            currentIndex = index;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(IconlyBold.home,), label: "Home"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.buy), label: "Cart"),

            BottomNavigationBarItem(icon: Icon(IconlyBold.heart), label: "favorite"),
            BottomNavigationBarItem(icon: Icon(IconlyBold.setting), label: "setting"),

          ],
      ),
    );
  }
}
