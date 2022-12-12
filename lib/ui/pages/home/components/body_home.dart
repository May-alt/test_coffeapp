import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/all_tabs/all.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/coffe_tabs/coffee.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/tea_tabs/tea.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3, child: NestedScrollView(
      headerSliverBuilder: (context , value){
        return [
          SliverAppBar(

            /*designe bottom tabs bar*/
            // floating: true,
            // pinned: false,
           // titleTextStyle: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 14),
            backgroundColor: Colors.white,
            toolbarHeight: 20,


            /*Bottom tab bar pages*/
            bottom: TabBar(
              unselectedLabelColor:Colors.grey,
              labelColor: Colors.white,
              labelStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 17) ,
              unselectedLabelStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 17) ,
              padding: const EdgeInsets.all(10.0),
              labelPadding: const EdgeInsets.all(10.0),
              // indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              indicator: BoxDecoration(
                color: violetColors,
                borderRadius: BorderRadius.circular(30.0),
              ),


              tabs: [

                Text("all",),
                Text("Coffee",),
                Text("tea",),

              ],
            ),

          ),
        ];
      },
       body: TabBarView(
        children: [
          AllPages(),
          CoffeePages(),
          TeaPages(),
        ],
      ),
    ),
    );
  }
}
