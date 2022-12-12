import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/models/tea_models.dart';

class BodyTeaTabs extends StatefulWidget {
  const BodyTeaTabs({Key? key}) : super(key: key);

  @override
  State<BodyTeaTabs> createState() => _BodyTeaTabsState();
}

class _BodyTeaTabsState extends State<BodyTeaTabs> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
        ),
        child: Container(
          height: 280,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: teamodel.map((tea) {

              return Container(

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
                margin: const EdgeInsets.only(left: 10),
                height: 250,
                width: 180,

                child: Column(
                  children: [

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 05.0),

                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage(tea.urlImg),
                                  fit: BoxFit.cover)),
                        ),

                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 05.0),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text(tea.titre,
                              style: GoogleFonts.lato(fontSize: 20, color: textColors,fontWeight: FontWeight.w400),
                            ),

                            Text(tea.subTitle,
                              style: GoogleFonts.lato(fontSize: 14, color: textColors),
                            ),

                            SizedBox(
                              height: 07.0,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(tea.prix,
                                  style: GoogleFonts.lato(fontSize: 20, color: textColors,fontWeight: FontWeight.bold),
                                ),

                                Row(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(IconlyLight.bag2),),
                                    IconButton(onPressed: (){}, icon: Icon(IconlyLight.heart),),
                                  ],
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
