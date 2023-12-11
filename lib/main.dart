import 'package:audiometer_sih_2023/pages/home_page.dart';
import 'package:audiometer_sih_2023/pages/student_dashboard.dart';
import 'package:audiometer_sih_2023/pages/student_login.dart';
import 'package:audiometer_sih_2023/pages/student_signup.dart';
import 'package:audiometer_sih_2023/utils/routes.dart';
import 'package:audiometer_sih_2023/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Permission.microphone.request();
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
      initialRoute: MyRoutes.backgroundNoise,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.studentLoginRoute: (context) => const student_login(),
        MyRoutes.studentDashboard: (context) => const StudentDashboard(),
        MyRoutes.studentSignupRoute: (context) => const StudentSignup(),
        // MyRoutes.backgroundNoise: (context) => const BackgroundNoise(),
      },
    ); 
  }
}
