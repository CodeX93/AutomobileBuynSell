import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:hyser_wheels1/Widgets/ContactSupport.dart';
import 'package:hyser_wheels1/Widgets/LoginPage.dart';
import 'package:hyser_wheels1/Widgets/WelcomeScreen.dart';
import 'package:hyser_wheels1/Widgets/CarInspectionPage.dart';
import 'Widgets/AllAutoPartPage.dart';
import 'Widgets/Blog.dart';
import 'Widgets/CarInspectionPage.dart';
import 'Widgets/HomePage.dart';

import 'Widgets/uploadAdd.dart';
import 'Widgets/uploadBlog.dart';
import 'Widgets/InspectionConfirmation.dart';
import 'Widgets/CarInsurance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/HomePage': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/uploadAdd': (context) => const UploadAdd(),
        '/BlogView': (context) => const BlogView(),
        '/uploadBlog': (context) => const uploadBlog(),
        '/ContactSupport': (context) => const ContactSupport(),
        '/AllAutoPartPage': (context) => const AllAutoPartPage(),
        '/CarInsurancePage': (context) => const CarInsurancePage(),
        '/CarInspectionPage': (context) => const CarInspectionPage(),
        '/InspectionConfirmationPage': (context) =>
            const InspectionConfirmationPage(),
        '/LoginPage': (context) => const LoginPage(),
      },
      home: const MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.red : Colors.green,
          ),
        );
      },
    );
  }
}
