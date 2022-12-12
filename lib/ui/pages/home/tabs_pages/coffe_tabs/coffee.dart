import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/coffe_tabs/components/body_coffe_tabs.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/coffe_tabs/components/offre_speacial_coffee.dart';

class CoffeePages extends StatefulWidget {
  const CoffeePages({Key? key}) : super(key: key);

  @override
  State<CoffeePages> createState() => _CoffeePagesState();
}

class _CoffeePagesState extends State<CoffeePages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
             RotatedBox(
                 quarterTurns: -1,
               child: Row(
                 children: [
                   Text("deka coffe ".toUpperCase(), style: TextStyle(color: Colors.red,fontSize: 22),),
                   Icon(IconlyLight.discount,color: Colors.red,size: 22,),
                 ],
               ),
             ),

           Flexible(child: BodyCoffeTabs(),
              )
            ],
          ),

       Padding(
         padding: const EdgeInsets.only(left: 20.0),
         child:ReusibalText(text: "Special offer"),
       ),


          SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:OffreCoffe(),
          ),

        ],
      ),
    );
  }
}
