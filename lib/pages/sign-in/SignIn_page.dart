import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_proyect/pages/sign-in/SignIn_controller.dart';

class SignInPage extends StatelessWidget {

  SignInPage({super.key});

  SignInController controller = Get.put(SignInController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: ClipOval(
        child: Image.asset('assets\imgs\sebastian.jpg'),
      )
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: null,
          body: _buildBody(context)
      )
    );
  }
}