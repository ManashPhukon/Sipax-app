
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sipax_app/Signup/components/background.dart';
import 'package:sipax_app/Welcome/welcome_screen.dart';
import 'package:sipax_app/widgets/already_have_an_account_acheck.dart';
import 'package:sipax_app/widgets/rounded_button.dart';
import 'package:sipax_app/widgets/rounded_input_field.dart';
import 'package:sipax_app/widgets/rounded_password_field.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({Key? key}) : super(key: key);

  @override
  _SignupBodyState createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {

  String userPhotoUrl = "";
   File? _image;

  final picker = ImagePicker();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  get value => null;

  get builder => null;



  chooseImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    File file = File(pickedFile!.path);

    setState(() {
      _image = file;
    });
  }

  @override
  Widget build(BuildContext context) {
     double _screenWidth = MediaQuery.of(context).size.width,
    _screenHeight = MediaQuery.of(context).size.height;

    return SignupBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: (){
                chooseImage();
              },  //call the function
              child: CircleAvatar(
                  radius: _screenWidth * 0.20,
                  backgroundColor: Colors.deepPurple[100],
                  backgroundImage: _image == null?null:FileImage(_image!),
                  child: _image == null
                  ? Icon(
                    Icons.add_photo_alternate,
                    size: _screenWidth * 0.20,
                    color: Colors.white,
                  )
                      : null,
              )),
            SizedBox(height: _screenHeight * 0.01),
            RoundedInputField(
              hintText: "Name",
              icon: Icons.person,
              onChanged: (value) {
                _nameController.text = value;
              },

            ),
            SizedBox(height: _screenHeight * 0.01),
            RoundedInputField(
              hintText: "Email",
              icon: Icons.person,
              onChanged: (value) {
                _emailController.text = value;
              },
            ),

            RoundedPasswordField(
                onChanged: (value)
                    {
                      _passwordController.text = value;
                    },

            ),
            RoundedButton(
                text: "SIGNUP",
                press: ()
                {
                },
            ),
            SizedBox(height: _screenHeight * 0.03,),
            AlreadyHaveAnAccountCheck(
              login: false,
                press: ()
                    {
                      Navigator.push(
                        context,
                          MaterialPageRoute(
                          builder: (context) {
                            return WelcomeScreen();
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
