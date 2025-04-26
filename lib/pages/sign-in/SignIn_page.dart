import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_proyect/pages/sign-in/SignIn_controller.dart';

class SignInPage extends StatelessWidget {

  SignInPage({super.key});

  SignInController controller = Get.put(SignInController());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget _form(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryFixed,
          shape: BoxShape.rectangle,
          border: Border.all(
              color: Theme.of(context).colorScheme.inversePrimary,
              width: 10
          )
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("INGRESA ESTA INFORMACIÓN"),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  hintText: 'Ingresa tu nombre de usuario',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  hintText: 'Ingresa tu contraseña',
                  prefixIcon:
                  Icon(Icons.lock),
                  border: OutlineInputBorder(),
                )
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50)
                ),
                child: Text("Sign in"),
                onPressed: () {
                  usernameController.clear();
                  passwordController.clear();
                }
            ),
            SizedBox(
              height: 10,
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("No tienes cuenta? "),
                GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    "Creala aquí",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrangeAccent
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryFixed,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primaryFixed,
                    width: 10
                  )
                ),
                child: ClipOval(
                  child: Image.asset('assets/imgs/sebastian.jpg'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          _form(context),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Olvidaste tu contraseña? "),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      "Recuperala aquí",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrangeAccent
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
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