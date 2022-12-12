import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_coffeapp/layouts/colors.dart';
import 'package:test_coffeapp/models/all_models.dart';

class PriceWidgets extends StatefulWidget {
  const PriceWidgets({Key? key}) : super(key: key);

  @override
  State<PriceWidgets> createState() => _PriceWidgetsState();
}

class _PriceWidgetsState extends State<PriceWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Row(
        children: [
          // Text(
          //
          //   "78.58\$",
          //   style: GoogleFonts.lato(
          //       fontSize: 17,
          //       color: textColors,
          //       fontWeight: FontWeight.bold),
          // ),
          // SizedBox(width: 05.0,),
          Text(
            "78.58\$",
            overflow: TextOverflow.fade,
            style: GoogleFonts.lato(
                fontSize: 14,
                color: textColors,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
