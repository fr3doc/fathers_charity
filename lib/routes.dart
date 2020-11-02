import 'package:fathers_charity/models/complete_profile/complete_profile_screen.dart';
import 'package:fathers_charity/models/forgot_password/forgot_password_screen.dart';
import 'package:fathers_charity/models/login_success/login_success_screen.dart';
import 'package:fathers_charity/models/otp/otp_screen.dart';
import 'package:fathers_charity/models/sign_up_success/sign_up_success_screen.dart';
import 'package:fathers_charity/screens/campaign/campaign_screen.dart';
import 'package:fathers_charity/screens/home/home_screen.dart';
import 'package:fathers_charity/screens/sign_in/sign_in_screen.dart';
import 'package:fathers_charity/screens/sign_up/sign_up_screen.dart';
import 'package:fathers_charity/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  SignUpSuccessScreen.routeName: (context) => SignUpSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
};
