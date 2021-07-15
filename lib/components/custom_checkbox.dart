import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: true
            ? SvgPicture.asset("assets/icons/ic_check.svg")
            : SvgPicture.asset("assets/icons/ic_uncheck.svg"),
      ),
    );
  }
}
