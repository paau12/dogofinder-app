import 'package:dogofinder_app/components/default_button.dart';
import 'package:dogofinder_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHight * 0.40,
        ),
        SizedBox(height: SizeConfig.screenHight * 0.08),
        Text(
          "Inicio de sesión \ncon éxito",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultBottom(
            text: "Regresar al Inicio",
            press: () {},
          ),
        ),
        Spacer(),
      ],
    );
  }
}
