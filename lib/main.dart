import 'package:flutter/material.dart';
import 'package:flutter_application/pages/login_page.dart';
import 'package:flutter_application/pages/logins.dart';
import 'package:flutter_application/pages/studentinterface.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/themes.dart';
import 'package:flutter_application/pages/logsigns.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
      // MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.logsignsRoute: (context) => logsigns(),
          MyRoutes.studentinterfaceRoute: (context) => studentinterface(),
           MyRoutes.loginsRoute: (context) => logins(),
      },
    );
  }
}
