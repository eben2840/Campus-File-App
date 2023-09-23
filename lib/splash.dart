import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    var duration = Duration(seconds: 5);
    Timer(duration, () {
      navigateToNewPage(context); 
    });
  }

  void navigateToNewPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/newpage');
    print("Navigating to new page");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Presto Stay',
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 9, 214),
                   fontFamily: "PlusJakartaSans",         
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              // SizedBox(height: 20),
              // CircularProgressIndicator(
              //   color: Colors.blue,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
