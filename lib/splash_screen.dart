import 'package:flutter/material.dart';
import 'screens/admin/admin_home.dart';
import 'screens/login.dart';
import 'screens/user/user_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var isUser = false;

  Future checkIfUser(String uid) async{
    var userSnapshot = await FirebaseFirestore.instance.collection('Users').doc(uid).get();
    if(userSnapshot.exists)
      isUser = true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            Image.asset("assets/logo.png",
              width: 120,
              height: 120,)
          ],
        ),
      ),
      duration: 2000,
      splashIconSize: 120,
      backgroundColor: kBlack,
      nextScreen: FirebaseAuth.instance.currentUser==null
          ? Login()
          : isUser
          ? UHome()
          : AHome(),
    );
  }
}
