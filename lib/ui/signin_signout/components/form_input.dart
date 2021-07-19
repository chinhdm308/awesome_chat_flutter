import 'package:awesome_chat/colors.dart';
import 'package:awesome_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:awesome_chat/ext.dart';

class InputCommon extends StatelessWidget {
  const InputCommon({
    Key? key,
    required this.textFieldName,
    required this.hintText,
    required this.iconUri,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.controller,
    this.errorText,
    this.type,
  }) : super(key: key);
  final String textFieldName;
  final String hintText;
  final String iconUri;
  final TextInputType textInputType;
  final bool obscureText;
  final TextEditingController? controller;
  final String? errorText;
  final int? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.textFieldName,
            style: TextStyle(
              color: color_999999,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  // autovalidateMode: AutovalidateMode.always,
                  // validator: (input) {
                  //   if (input != null && type == EMAIL) {
                  //     return input.isValidEmail() ? null : "Check your email";
                  //   }
                  //   if (input != null && type == PASSWORD) {
                  //     return input.isValidPassword()
                  //         ? null
                  //         : "Độ dài tối thiểu 8 ký tự\n" +
                  //             "Chứa ít nhất một chữ cái thường (a-z)" +
                  //             "\nmột chữ cái hoa (A-Z) và một chữ số (0-9)";
                  //   }
                  //   return null;
                  // },
                  controller: this.controller,
                  obscureText: this.obscureText,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    hintText: this.hintText,
                    hintStyle: TextStyle(
                      color: color_676767,
                    ),
                    errorText: errorText,
                  ),
                  keyboardType: this.textInputType,
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SvgPicture.asset(
                  this.iconUri,
                ),
              ),
            ],
          ),
          SizedBox(height: 11),
          Divider(height: 1, color: color_D2D2D2)
        ],
      ),
    );
  }
}
