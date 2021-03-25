import 'package:flutter/material.dart';
import 'package:saamana_parivar/constants.dart';
import 'package:saamana_parivar/screens/register_page.dart';
import 'package:saamana_parivar/widgets/custom_btn.dart';
import 'package:saamana_parivar/widgets/custom_input.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                //Welcome message for the user
                padding: EdgeInsets.only(top: 24.0),
                child: Text(
                  "Welcome User,\nLogin to your account",
                textAlign: TextAlign.center,
                style: Constants.boldHeading),
              ),
              Column(
                //Input fields such as username and password
                children: <Widget>[

                  CustomInput(
                    hintText: "Email...",
                  ),
                  CustomInput(
                    hintText: "Password...",
                  ),
                  CustomBtn(
                    text: "Login",
                    onPressed: (){
                      print("Clicked the login button");
                    },

                  ),

                ],
              ),
              CustomBtn(
                text: "Create New Account",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => RegisterPage()
                  ),
                  );// Navigator.push
                }, //onPressed
                outlineBtn: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
