import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/themes.dart';

// ignore: camel_case_types
class logsigns extends StatelessWidget {
  //const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //  Image.asset(
             // 'assets/images/admin.png',
              //height: 150,
            //),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute); // Navigate to home screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyTheme.buttonColor, // Use the button color from theme
              ),
              child: const Text('Signup'),
            ),
            const SizedBox(height: 20),
           // Image.asset(
            //  'assets/images/eduapp_student_login.jpg',
            //  height: 150,
            //),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginsRoute); // Navigate to home screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyTheme.buttonColor, // Use the button color from theme
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
