import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_proyect/pages/create-account/CreateAccount_controller.dart';
import 'package:quiz_proyect/pages/sign-in/SignIn_controller.dart';

class createAccountPage extends StatelessWidget {

  createAccountPage({super.key});

  createAccountController controller = Get.put(createAccountController());

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
            Text("CREA TU CUENTA"),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: usernameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Nombre completo',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: usernameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  hintText: 'Correo',
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
                  labelText: 'Usuario',
                  hintText: 'Usuario',
                  prefixIcon:
                  Icon(Icons.lock),
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
                  hintText: 'Contraseña',
                  prefixIcon:
                  Icon(Icons.lock),
                  border: OutlineInputBorder(),
                )
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Repetir Contraseña',
                  hintText: 'Repetir Contraseña',
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
                child: Text("Create account"),
                onPressed: () {
                  usernameController.clear();
                  passwordController.clear();
                }
            ),
            SizedBox(
              height: 10,
            ),
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