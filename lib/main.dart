import 'package:flutter/material.dart';
import 'package:quiz_proyect/config/theme.dart';
import 'package:quiz_proyect/config/util.dart';
import 'package:quiz_proyect/pages/create-account/CreateAccount_page.dart';
import 'package:quiz_proyect/pages/home/home_page.dart';
import 'package:quiz_proyect/pages/recover_password/recover_password_page.dart';
import 'package:quiz_proyect/pages/sign-in/SignIn_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = createTextTheme(
      context, 'Abril Fatface', 'Allerta');
    final MaterialTheme materialTheme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      routes: {
        'sign-in': (context) => SignInPage(),
        'sign-up': (context) => createAccountPage(),
        'reset-password': (context) => RecoverPasswordPage(),
        'home': (context) => HomePage()
      },
    );
  }
}