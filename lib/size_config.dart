import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Proporcionar la altura por cada tamaño de las pantalla
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHight;
  //812 es el diseño de la altura  que se usará
  return (inputHeight / 812.0) * screenHeight;
}

//Proporcionar el ancho por cada tamaño de las pantallas
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  //375 es el diseño del ancho que se usará
  return (inputWidth / 375.0) * screenWidth;
}
