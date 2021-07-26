import 'package:awesome_chat/colors.dart';
import 'package:awesome_chat/components/primary_button.dart';
import 'package:awesome_chat/constants.dart';
import 'package:awesome_chat/ui/home/home.dart';
import 'package:awesome_chat/ui/signin/signin_controller.dart';
import 'package:awesome_chat/ui/signup/signup_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../components/form_input.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  final

  SignInScreen() {
    emailController.addListener(() {

    });
    pwController.addListener(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 81),
                SvgPicture.asset(
                  "assets/images/logo_mail_2.svg",
                ),
                Text(
                  "Trải nghiệm Awesome chat",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 11),
                Text(
                  "Đăng nhập",
                  style: TextStyle(
                    color: color_4356B4,
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 61),
                Obx(
                  () => InputCommon(
                    textFieldName: 'EMAIL',
                    hintText: 'yourname@gmail.com',
                    iconUri: 'assets/icons/ic_mail.svg',
                    controller: emailController,
                    showErrorText: viewModel.errorEmail.value,
                    type: EMAIL,
                  ),
                ),
                SizedBox(height: 40),
                Obx(
                  () => InputCommon(
                    textFieldName: 'PASSWORD',
                    hintText: '********',
                    iconUri: 'assets/icons/ic_key.svg',
                    obscureText: true,
                    controller: pwController,
                    showErrorText: viewModel.errorPw.value,
                    type: PASSWORD,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Quên mật khẩu?",
                    style: TextStyle(
                      color: color_4356B4,
                    ),
                  ),
                ),
                SizedBox(height: 47),
                Obx(
                  () => PrimaryButton(
                    text: "ĐĂNG NHẬP",
                    press: () {
                      // showLoaderDialog(context);
                      Get.to(() => HomeScreen());
                    },
                    isActive: viewModel.activeLoginButton.value,
                  ),
                ),
                SizedBox(height: 123),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 1),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.elasticInOut);
                          // return ScaleTransition(
                          //   scale: animation,
                          //   alignment: Alignment.bottomCenter,
                          //   child: child,
                          // );
                          return SlideTransition(
                            child: child,
                            position: Tween<Offset>(
                                    begin: Offset(1, 0), end: Offset.zero)
                                .animate(animation),
                          );
                        },
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            SignupScreen(),
                      ),
                    );
                  },
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            color: color_999999,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                        children: [
                          TextSpan(text: 'Chưa có tài khoản? '),
                          TextSpan(
                            text: 'Đăng ký ngay',
                            style: TextStyle(
                              color: color_4356B4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 38),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: new Row(
      children: [
        CircularProgressIndicator(),
        Container(margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

dismissLoaderDialog(BuildContext context) => Navigator.pop(context);
