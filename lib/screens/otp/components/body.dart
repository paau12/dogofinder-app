import 'package:dogofinder_app/components/default_button.dart';
import 'package:dogofinder_app/constants.dart';
import 'package:dogofinder_app/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHight * 0.05),
              Text("Verificación OTP", style: headingStyle),
              Text("Te acabamos de enviar un código al +52 (Número)"),
              builTimer(),
              SizedBox(height: SizeConfig.screenHight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHight * 0.1),
              GestureDetector(
                onTap: () {
                  //Reenviar el código
                },
                child: Text(
                  "Reenviar código",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row builTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Este código expira en "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
