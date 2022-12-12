import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/config_function/function.dart';
import 'package:test_coffeapp/layouts/constant.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/ui/pages/search/search_page.dart';

class OderScreens extends StatefulWidget {
  const OderScreens({Key? key}) : super(key: key);

  @override
  State<OderScreens> createState() => _OderScreensState();
}

class _OderScreensState extends State<OderScreens> {
  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,

        leading: IconButton(
            onPressed: (){
              NavigatorExitToPage(context);
            },
            icon: Icon(IconlyLight.arrowLeft2, color: Colors.black,)),

        title: Text("Order",
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
        centerTitle: true,
      ),

      body: isEmpty ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/vide_images/th.jpg", width: 250,height: 250,),
            SizedBox(height: 20.0,),
            Text("No Product yet \n don't have anny product",
              textAlign: TextAlign.center,
              style:Grastitle
            )
          ],
        ),
      ) : Text("Wecome"),
    );
  }
}
