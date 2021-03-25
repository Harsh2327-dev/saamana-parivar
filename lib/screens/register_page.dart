import 'package:flutter/material.dart';
import 'package:saamana_parivar/constants.dart';
import 'package:saamana_parivar/widgets/custom_btn.dart';
import 'package:saamana_parivar/widgets/custom_input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

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
                    "Create a New Account",
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
                    text: "Create Account",
                    onPressed: (){
                      print("Clicked the login button");
                    },

                  ),

                ],
              ),
              CustomBtn(
                text: "Back to Login",
                onPressed: (){
                  Navigator.pop(context);
                },
                outlineBtn: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
