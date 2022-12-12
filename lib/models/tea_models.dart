import 'package:flutter/material.dart';


class TeaModels {

  String urlImg;
  String subTitle;
  String titre;
  String prix ;

  TeaModels({required this.titre, required this.subTitle, required this.prix, required this.urlImg});

}

List <TeaModels> teamodel = [
  TeaModels(titre: "The", subTitle: "prix au kilo 124.37", prix: " 09.50", urlImg: "assets/img/th4.jpg"),
  TeaModels(titre: "The", subTitle: "prix au kilo 124.37", prix: " 09.50", urlImg: "assets/img/th5.jpg"),
  TeaModels(titre: "The", subTitle: "prix au kilo 124.37", prix: " 09.50", urlImg: "assets/img/th6.jpg"),
  TeaModels(titre: "Thé vert Bio", subTitle: "Boite de 20 infusenttes", prix: " 09.95", urlImg: "assets/img/t1.jpg"),
  TeaModels(titre: "The", subTitle: "prix au kilo 124.37", prix: " 09.50", urlImg: "assets/img/th1.jpg"),
  TeaModels(titre: "The", subTitle: "prix au kilo 124.37", prix: " 09.50", urlImg: "assets/img/th2.jpg"),
  TeaModels(titre: "The", subTitle: "prix au kilo 124.37", prix: " 09.50", urlImg: "assets/img/th3.jpg"),
  ];