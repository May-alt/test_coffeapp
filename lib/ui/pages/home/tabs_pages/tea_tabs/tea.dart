import 'package:flutter/material.dart';
import 'package:test_coffeapp/layouts/widgets_layouts.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/tea_tabs/components/body_tea_tabs.dart';
import 'package:test_coffeapp/ui/pages/home/tabs_pages/tea_tabs/components/offre_special_tea.dart';

class TeaPages extends StatefulWidget {
  const TeaPages({Key? key}) : super(key: key);

  @override
  State<TeaPages> createState() => _TeaPagesState();
}

class _TeaPagesState extends State<TeaPages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BodyTeaTabs(),

          SizedBox(height: size.height*0.01,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:ReusibalText(text: "Special offer"),
          ),

          SizedBox(height: size.height*0.02),

          OffreSpeacialTae(),
        ],
      ),
    );
  }
}
