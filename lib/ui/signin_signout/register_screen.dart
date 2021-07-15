import 'package:awesome_chat/components/custom_checkbox.dart';
import 'package:awesome_chat/components/primary_button.dart';
import 'package:awesome_chat/ui/signin_signout/signin_screen.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import 'components/form_input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_E5E5E5,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 64),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/icons/ic_backward_arrow.svg"),
                ),
                SizedBox(height: 48),
                Text(
                  "Đăng ký",
                  style: TextStyle(
                    color: color_4356B4,
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 61),
                InputCommon(
                  textFieldName: 'HỌ VÀ TÊN',
                  hintText: 'yourname',
                  iconUri: 'assets/icons/ic_group.svg',
                ),
                SizedBox(height: 40),
                InputCommon(
                  textFieldName: 'EMAIL',
                  hintText: 'yourname@gmail.com',
                  iconUri: 'assets/icons/ic_mail.svg',
                ),
                SizedBox(height: 40),
                InputCommon(
                  textFieldName: 'PASSWORD',
                  hintText: '********',
                  iconUri: 'assets/icons/ic_key.svg',
                  obscureText: true,
                ),
                SizedBox(height: 15),
                Container(
                  child: Row(
                    children: [
                      CustomCheckbox(),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: color_999999,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(text: 'Tôi đồng ý với các '),
                              TextSpan(
                                text: 'chính sách',
                                style: TextStyle(color: color_4356B4),
                              ),
                              TextSpan(text: ' và '),
                              TextSpan(
                                text: 'điều khoản',
                                style: TextStyle(color: color_4356B4),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 47),
                PrimaryButton(text: "ĐĂNG KÝ", press: () {}),
                SizedBox(height: 123),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninScreen(),
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
                          TextSpan(text: 'Đã có tài khoản? '),
                          TextSpan(
                            text: 'Đăng nhập ngay',
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
