import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/providers/favorite_provider.dart';
// import 'package:test_coffeapp/ui/pages/home/tabs_pages/all_tabs/components/body_all_articl.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/coffe_tabs/coffee.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:test_coffeapp/layouts/config_function/function.dart';
import 'package:test_coffeapp/models/all_models.dart';
import 'package:test_coffeapp/ui/inner_pages/oder_inner_pages.dart';
import 'package:test_coffeapp/ui/pages/widget_s/price_widgets.dart';

import 'package:like_button/like_button.dart';

class AllPages extends StatefulWidget {
  const AllPages({Key? key}) : super(key: key);

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  @override
  Widget build(BuildContext context) {
    final word;
     final provider = Provider.of<favoriteProvider>(context);


    return Padding(
      padding: const EdgeInsets.only(top: 20),

      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.70,
            // crossAxisSpacing: 2,
            // mainAxisSpacing: 10
          ),
          itemCount: allmodel.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                // height: 240,
                // width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [

                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(0, 1),
                        spreadRadius: 1.0),

                  ],
                ),
                child: Column(
                  children: [

                    Expanded(
                      flex: 3,
                      child: Column(

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: (){
                                  print("add to cart");
                                },
                                icon: Icon(IconlyLight.bag2),
                              ),

                              IconButton(
                                onPressed: (){
                                  // return provider.toggelFavorite(word);
                                  print("favorite");

                                },
                                icon: Icon(IconlyLight.heart),
                              ),

                              // LikeButton(
                              //   onTap: () async{
                              //
                              //   },
                              //   size: 25,
                              //   circleColor:
                              //   CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                              //   bubblesColor: BubblesColor(
                              //     dotPrimaryColor: Color(0xff33b5e5),
                              //     dotSecondaryColor: Color(0xff0099cc),
                              //   ),
                              // ),


                            ],),

                          SizedBox(height: 08.0,),

                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(allmodel[index].urlImg),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  //  SizedBox(height: 05.0,),


                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 05.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                allmodel[index].titre,
                                style: GoogleFonts.lato(
                                    fontSize: 20,
                                    color: textColors,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),

                            SizedBox(
                              height: 03.0,
                            ),

                            PriceWidgets(),



                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }


  // Future<bool> onLikeButtonTapped(bool isLiked) async{
//   //   /// send your request here
//   //   // final bool success= await sendRequest();
//   //
//   //   /// if failed, you can do nothing
//   //   // return success? !isLiked:isLiked;
//   //
//   //  return !isLiked;
//   //
//   // }
}

