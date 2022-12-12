import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/alert_dialog_/dialog_reusibal.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/config_function/function.dart';
import 'package:test_coffeapp/layouts/constant.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/providers/auth_provider.dart';
import 'package:test_coffeapp/services/auth.dart';
import 'package:test_coffeapp/ui/inner_pages/oder_inner_pages.dart';
import 'package:test_coffeapp/ui/inner_pages/wishlist_inner_pages.dart';

class SettingPages extends StatefulWidget {
  const SettingPages({Key? key}) : super(key: key);

  @override
  State<SettingPages> createState() => _SettingPagesState();
}

class _SettingPagesState extends State<SettingPages> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(

        title: Text("Setting", style: TextStyle(color: Colors.black,fontSize: 20)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [

          IconButton(
              onPressed: () {},
              icon: Icon(IconlyLight.notification, color: Colors.black,)),
        ],
        // centerTitle: true,
      ),

      body:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [



                  ReusibalLsitTile(
                      Title: Text("Adresse",
                      style: textlist,
                      ),
                      leading: Icon(IconlyLight.profile, color: iconsColor,),
                      trailing: Icon(IconlyLight.arrowRight2),
                      onTap: () async{
                        await showAdressAlertDialog(context);
                      }
                  ),

                  ReusibalLsitTile(
                      Title: Text("Changerd email",
                        style: textlist,
                      ),
                      leading: Icon(IconlyLight.message, color: iconsColor,),
                      trailing: Icon(IconlyLight.arrowRight2),
                      onTap: () async{
                        await showEmailAlertDialog(context);
                      }
                  ),

                  ReusibalLsitTile(
                      Title: Text("Order",
                        style: textlist,
                      ),
                      leading: Icon(IconlyLight.bag, color: iconsColor,),
                      trailing: Icon(IconlyLight.arrowRight2),
                      onTap: (){
                        NavigatorToNextPage(context, OderScreens());
                      }
                  ),

                  ReusibalLsitTile(
                      Title: Text("wishlist",
                        style: textlist,
                      ),
                      leading: Icon(IconlyLight.heart, color: iconsColor,),
                      trailing: Icon(IconlyLight.arrowRight2),
                      onTap: (){
                        NavigatorToNextPage(context, wishlistScreens());
                      }
                  ),


                  ReusibalLsitTile(
                      Title: Text("logOut",
                        style: textlist,
                      ),
                      leading:Icon(IconlyLight.logout, color: iconsColor,) ,
                      trailing: Icon(IconlyLight.arrowRight2),
                    onTap: () async{
                     await showLogOutAlertDialog(context);
                      // AuthMethodes().logout();
                    },
                  ),

                  SizedBox(height: 10.0,),

                  // color: Color(0xffE9EEF4),

                  InkWell(
                    onTap: (){
                      AdaptiveTheme.of(context).darkTheme;
                    },
                    child: Container(
                      color: Colors.grey.shade100,
                      child:  SwitchListTile(
                        title:  Text('Théme',
                          style: textlist,
                        ),
                        value: _lights,
                        onChanged: (bool value) {
                          setState(() {
                            _lights = value;

                          });
                        },
                        secondary: Icon(Icons.light_mode, color: iconsColor,),

                      ),
                    ),
                  )

                ],
              ),
            ),
      ),

    );
  }



}
