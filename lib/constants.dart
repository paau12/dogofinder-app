import "package:flutter/material.dart";
import 'size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
const textWhite = Color(0xFFFFFFFF);
const textBlack = Color(0xFF000000);
const backgroundColor = Color.fromRGBO(237, 214, 180, 1.0);

//color card
const card1 = Color(0xFF15464E);
const card2 = Color(0xFFC9E193);
const card3 = Color(0xFF00B7B7);
const card4 = Color(0xFFB6DDDF);
const card5 = Color(0xFFC9E193);

const contentWhite = TextStyle(
  fontSize: 15,
  height: 1.5,
  color: textWhite,
);

const contentBlack = TextStyle(
  fontSize: 15,
  height: 1.5,
  color: textBlack,
);

const appTitle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.bold,
  height: 1.5,
);

const appSubTitle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  height: 1.5,
);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

//FormError
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor ingresa tu correo";
const String kInvalidEmailError = "Por favor ingresa un correo válido";
const String kPassNullError = "Por favor ingresa tu contraseña";
const String kShortPassError = "La contraseña es muy corta";
const String kMatchPassError = "Las contraseñas no coinciden";
const String kNameNullError = "Por favor ingresa tu nombre";
const String kPhoneNumberNullError = "Por favor ingresa tu número teléfonico";
const String kAddressNullError = "Por favor ingresa tu correo";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}
