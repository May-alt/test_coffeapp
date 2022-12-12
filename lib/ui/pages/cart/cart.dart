import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/ui/pages/cart/cart_widgets.dart';
import 'package:test_coffeapp/ui/pages/cart/vide_cart.dart';
import 'package:test_coffeapp/ui/pages/search/search_page.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {

    bool isEmpty = false;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(

        title: Text("Cart", style: TextStyle(color: Colors.black,fontSize: 20)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [

          IconButton(
              onPressed: () {},
              icon: Icon(IconlyLight.notification, color: Colors.black,)),
        ],
        // centerTitle: true,
      ),

      body:
      isEmpty ? VideCart() :

      Padding(
        padding:  const EdgeInsets.all(10.0),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffA2DCEE),
                    borderRadius: BorderRadius.circular(08.0),
                  ),

                  child: Center(
                    child: Text("Solde",
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.black),
                    ),
                  ),

                ),

                Text("8.72 \$",
                  style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),

              ],
            ),

            SizedBox(height: 25.0,),


            Expanded(child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
                  return CartWidgets();
                }),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: ReusibalButton(
                  text: "CHEKOUT",
                 onTap: (){ print("ched out");},

              )),

          ],
        ),
      )
      
    );
  }
}
