import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/models/coffe_models.dart';


class OffreCoffe extends StatefulWidget {
  const OffreCoffe({Key? key}) : super(key: key);

  @override
  State<OffreCoffe> createState() => _OffreCoffeState();
}

class _OffreCoffeState extends State<OffreCoffe> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: coffemodel.map((offre){
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
                        image: AssetImage(offre.urlImg),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Get three ice flavoured \n cool coffee for the",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 08.0,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               IconButton(onPressed: (){}, icon: Icon(IconlyLight.bag2),),
                               IconButton(onPressed: (){}, icon: Icon(IconlyLight.heart),),
                             ],
                           ),


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
