import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_proyect/models/entities/user.dart';
import 'package:quiz_proyect/models/httpResponse/service_http_response.dart';
import 'package:quiz_proyect/services/user_service.dart';

class SignInController extends GetxController {
  TextEditingController txtUser = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  RxString message = ''.obs;
  Rx<MaterialColor> messageColor = Colors.blue.obs;

  UserService service = UserService();

  void signIn(BuildContext context) async {
    // esto te manda a otra página, una redirección, navegación. Para eso usamos el context
    print('Hola desde controller');
    String user = txtUser.text;
    String password = txtPassword.text;

    User userData = User(
      id: 0,
      username: user,
      password: password,
      email: "",
      image: "",
      fullname: "",
      resetKey: ""
    );
    ServiceHttpResponse? response = await service.signIn(userData);
    if (response != null) {
      if (user == 'admin' && password == '123' && response.status == 200) {
        print('Ir a home');
        messageColor.value = Colors.green;
        message.value = "Usuario válido";
        Navigator.pushNamed(context, '/home');
      } else {
        print('error');
        messageColor.value = Colors.red;
        message.value = "Usuario y/o contraseña no es válidos";
      }
    }

    Future.delayed(Duration(seconds: 5), () {
      message.value = "";
    });
  }

  void go_to_signup(BuildContext context) {
    Navigator.pushNamed(context, '/create-account');

  }

  void go_to_resetPassword(BuildContext context) {
    Navigator.pushNamed(context, '/recover-password');

  }
}