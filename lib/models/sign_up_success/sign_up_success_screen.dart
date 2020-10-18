import 'package:fathers_charity/models/sign_up_success/components/body.dart';
import 'package:flutter/material.dart';

class SignUpSuccessScreen extends StatelessWidget {
  static String routeName = "/sign_up_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("SignUp Success"),
      ),
      body: Body(),
    );
  }
}
