import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lazygram/Classes/animations.dart';
import 'package:lazygram/PAGES/HomePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String id = "SplashPage";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void openPage() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  void initState() {
    super.initState();
    openPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child:
            Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeAnimation(
                    1,
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage("assets/images/lazy_panda.webp"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
              FadeAnimation(
                1,
                  Text("Lazygram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),)
                ],
              ),
            ),


      ),
    );
  }
}
