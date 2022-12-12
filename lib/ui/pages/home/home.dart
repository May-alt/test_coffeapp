import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/config_function/function.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/providers/favorite_provider.dart';
import 'package:test_coffeapp/services/auth.dart';
import 'package:test_coffeapp/ui/pages/home/components/body_home.dart';
import 'package:test_coffeapp/ui/pages/search/search_page.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/coffe_tabs/coffee.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/tea_tabs/tea.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (context) =>favoriteProvider(),

     child: Scaffold(
      backgroundColor: Colors.white,

      appBar: ReusAppBar(
          data: "user.",
          onPressed: (){
            NavigatorToNextPage(context, SearchPages());

          }
      ),



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(padding: const EdgeInsets.only(left: 15.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Choose category!",
                  style: GoogleFonts.abel(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35,letterSpacing: 1.4),),
                SizedBox(height: 05.0,),
                Text("Perfect way to start your day.!" ,
                  style: GoogleFonts.lato(color: textColors,fontWeight: FontWeight.normal,fontSize: 18,),),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
          Expanded (child: BodyHome()),



        ],
      ),

    ),
    );
  }

}
