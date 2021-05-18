import 'package:dogofinder_app/components/custom_surffix_icon.dart';
import 'package:dogofinder_app/components/default_button.dart';
import 'package:dogofinder_app/components/form_error.dart';
import 'package:dogofinder_app/constants.dart';
import 'package:dogofinder_app/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

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
                "Completa tu Perfil",
                style: headingStyle,
              ),
              Text(
                "Completa los campos o continua \n con una red social",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHight * 0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                "Para continuar debes de confirmar que estas de acuerdo con nuestros términos y condiciones",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
            ],
          ),
        ),
      ),
    );
  }
}
