import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_screen/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shopping Screen Demo',
        theme: ThemeData(
            //primarySwatch: Colors.blue,
            primaryColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'SFProDisplay-Bold'),
        debugShowCheckedModeBanner: false,
        //home: HomePage(),
        home: SplashScreen(),
        initialRoute: "/",
        routes: {
          "/Home": (context) => HomePage(),
        });
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    countDownTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Going To Shopping Screen"),
      ),
    );
  }

  countDownTime() async {
    return Timer(
      Duration(seconds: 2),
      () async {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
    );
  }
}
