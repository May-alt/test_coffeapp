import 'package:flutter/material.dart';


class CoffeModels {

  String urlImg;
  String subTitle;
  String titre;
  String prix ;

  CoffeModels({required this.titre, required this.subTitle, required this.prix, required this.urlImg});

}

List <CoffeModels> coffemodel = [
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 10.0", urlImg: "assets/img/cf2.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 10.0", urlImg: "assets/img/cf3.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 50.0", urlImg: "assets/img/b1.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 05.0", urlImg: "assets/img/b2.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 20.0", urlImg: "assets/img/b3.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 09.0", urlImg: "assets/img/b2.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 10.0", urlImg: "assets/img/b1.jpg"),
  CoffeModels(titre: "Coffee", subTitle: "coffe a lait", prix: " 10.0", urlImg: "assets/img/cf1.jpg"),

];