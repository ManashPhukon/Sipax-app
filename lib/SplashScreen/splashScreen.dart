import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sipax_app/Welcome/welcome_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer() {    //function
    Timer(Duration(seconds: 5), () async{
      Route newRoute = MaterialPageRoute(builder: (context) => WelcomeScreen()); //call the Screen
      Navigator.pushReplacement(context, newRoute);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();  //call the function
  }



  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors:[
                Colors.purple,
                Colors.deepPurple,
              ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                   padding: const EdgeInsets.all(8.0),
                 child: Image.asset('assets/images/logo.png', width: 300.0,),
               ),

              SizedBox(height: 20.0,),

              Center(
                child: Text(
                  "sell,Purchases or Exchange your old Home Appliances",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontFamily: "Lobster"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
