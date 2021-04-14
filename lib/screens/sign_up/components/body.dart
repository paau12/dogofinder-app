import 'package:dogofinder_app/components/custom_surffix_icon.dart';
import 'package:dogofinder_app/components/default_button.dart';
import 'package:dogofinder_app/components/form_error.dart';
import 'package:dogofinder_app/components/social_card.dart';
import 'package:dogofinder_app/constants.dart';
import 'package:dogofinder_app/screens/sign_up/components/sign_up_form.dart';
import 'package:dogofinder_app/size_config.dart';
import 'package:flutter/material.dart';

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
              SizedBox(height: SizeConfig.screenHight * 0.02),
              Text(
                "Registrar Cuenta",
                style: headingStyle,
              ),
              Text(
                "Completa los campos para continuar \nó registrate con una red social",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Para continuar debes de confirmar que estas de acuerdo \n con nuestros términos y condiciones",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
