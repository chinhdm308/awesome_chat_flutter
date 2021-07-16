import 'package:awesome_chat/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputCommon extends StatelessWidget {
  const InputCommon({
    Key? key,
    required this.textFieldName,
    required this.hintText,
    required this.iconUri,
    this.textInputType = TextInputType.text,
    this.obscureText = false
  }) : super(key: key);
  final String textFieldName;
  final String hintText;
  final String iconUri;
  final TextInputType textInputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {

    TextEditingController a = new TextEditingController();

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
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    obscureText: this.obscureText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: this.hintText,
                      hintStyle: TextStyle(
                        color: color_676767,
                      ),
                    ),
                    keyboardType: textInputType,
                    maxLines: 1,
                  ),
                ),
                SvgPicture.asset(
                  this.iconUri,
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Divider(height: 1, color: color_D2D2D2)
        ],
      ),
    );
  }
}
