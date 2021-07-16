import 'package:awesome_chat/colors.dart';
import 'package:awesome_chat/ui/signin_signout/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SigninScreen()));
    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color_4356B4, color_3DCFCF],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/logo_mail_1.svg",
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 40),
                children: [
                  TextSpan(
                    text: "Awesome",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  TextSpan(
                    text: " chat",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
