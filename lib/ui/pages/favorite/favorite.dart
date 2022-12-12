import 'package:flutter/material.dart';
import 'package:test_coffeapp/layouts/config_function/function.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/ui/pages/favorite/favorite_widgets.dart';
import 'package:test_coffeapp/ui/pages/search/search_page.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Wishlist",
          style: GoogleFonts.lato(color: Colors.black,),),

        actions: [

          IconButton(
              onPressed: (){
                NavigatorToNextPage(context, SearchPages());
              },
              icon: Icon(IconlyLight.search, color: Colors.black,)),

          IconButton(
              onPressed: () {},
              icon: Icon(IconlyLight.notification, color: Colors.black,)),
        ],

      ),


      body:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index){
                return FovoriteWidgets();
              }
          ),

      ),
    );
  }
}
