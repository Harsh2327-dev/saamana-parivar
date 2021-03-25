import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saamana_parivar/constants.dart';
import 'package:saamana_parivar/screens/home_page.dart';
import 'package:saamana_parivar/screens/login_page.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // if error occurs while connecting to firebase
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("Error: ${snapshot.error}"),
              ),
            );
          }
          //connection established successfully with firebase
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, streamSnapshot){
                // if streamSnapshot has error
                if(streamSnapshot.hasError){
                  return Scaffold(
                    body: Center(
                      child: Text("Error: ${streamSnapshot.error}"),
                    ),
                  );
                }

                //Connection state active - Do the user login check inside the if statement
                if(streamSnapshot.connectionState == ConnectionState.active){
                  // get the user
                  User _user = streamSnapshot.data;

                  //if the user is null, we're not logged in
                  if(_user == null){
                    // if user is not logged in then return to login page
                    return LoginPage();
                  } else{
                    //if the user is logged in then head to home page
                    return HomePage();
                  }
                }
                //Checking the auth state - loading();
                return Scaffold(
                  body: Center(
                    child: Text(
                      "Checking Authentication...",
                      style: Constants.regularHeading,
                    ),
                  ),
                );
              }
            );
          }
          // connecting to firebase - loading();
          return Scaffold(
            body: Center(
              child: Text(
                "Initializing...",
                style: Constants.regularHeading,
              ),
            ),
          );
        });
  }
}
