import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/models/tea_models.dart';


class OffreSpeacialTae extends StatefulWidget {
  const OffreSpeacialTae({Key? key}) : super(key: key);

  @override
  State<OffreSpeacialTae> createState() => _OffreSpeacialTaeState();
}

class _OffreSpeacialTaeState extends State<OffreSpeacialTae> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: teamodel.map((teaoffre){
          return Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 140,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(teaoffre.urlImg),
                          fit: BoxFit.cover
                      )
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: brown,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(child: Text("Cool Coffee",
                                style:GoogleFonts.lato(color: Colors.white) ,
                              ),
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(IconlyLight.bag2),),
                                IconButton(onPressed: (){}, icon: Icon(IconlyLight.heart),),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 08.0,),
                        Text("Get three ice flavoured \n cool coffee for the",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
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
    );
  }
}
