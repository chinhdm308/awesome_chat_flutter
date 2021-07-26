import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
    required this.iconUri,
    required this.title,
    this.option = "",
    this.isShowNext = true,
    this.isLast = false,
    this.isLogout = false,
    required this.press,
  }) : super(key: key);

  final String iconUri;
  final String title;
  final String option;
  final bool isShowNext;
  final bool isLast;
  final bool isLogout;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: press,
        highlightColor: Colors.purple.withOpacity(0.5),
        splashColor: Colors.pink.withOpacity(0.5),
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 25, 12, 0),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    this.iconUri,
                    color: isLogout ? color_C92323 : color_999999,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        this.title,
                        style: TextStyle(
                          color: isLogout ? color_C92323 : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    this.option,
                    style: TextStyle(
                      color: isShowNext ? color_4356B4 : color_999999,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  isShowNext
                      ? Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: SvgPicture.asset(
                      "assets/icons/ic_next.svg",
                    ),
                  )
                      : Container(),
                ],
              ),
              SizedBox(height: 25),
              isLast ? Container() : Divider(
                height: 1,
                color: color_D2D2D2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
