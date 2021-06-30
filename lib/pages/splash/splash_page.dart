import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home/home_page.dart';
import 'package:flutter_challenge/utils/routes.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(
          seconds: 2,),
            (){
          Navigator.pushReplacement(context, Routes.home());
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/lottie/contact.json',repeat: true),
      ),
    );
  }
}
