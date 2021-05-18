import 'dart:js';

import 'package:dogofinder_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:dogofinder_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:dogofinder_app/screens/home/home_screen.dart';
import 'package:dogofinder_app/screens/login_success/login_success_screen.dart';
import 'package:dogofinder_app/screens/otp/otp_screen.dart';
import 'package:dogofinder_app/screens/search/search_screen.dart';
import 'package:dogofinder_app/screens/sign_in/sign_in_screen.dart';
import 'package:dogofinder_app/screens/sign_up/sign_up_screen.dart';
import 'package:dogofinder_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
};
