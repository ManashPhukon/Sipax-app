import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sipax_app/Signup/signup_screen.dart';
import 'package:sipax_app/Welcome/components/background.dart';
import 'package:sipax_app/widgets/rounded_button.dart';

class WelcomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "sipax_app",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Signatra",
                fontSize: 60.0,
                color: Colors.deepPurple[100]
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset("assets/icons/chat.svg",
            height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
                text: "LOGIN",
                press: (){},
                ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.deepPurple,
              textColor: Colors.black,

              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
