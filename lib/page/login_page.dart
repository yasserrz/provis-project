import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/themes.dart';
import 'package:flutter_application_1/shared/widget/appbar_custom.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarBasic(title: "Login"),
      backgroundColor: kRedColor,
    );
  }
}
