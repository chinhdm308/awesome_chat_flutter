import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showLoaderDialog() {
  AlertDialog alert = AlertDialog(
    content: new Row(
      children: [
        CircularProgressIndicator(),
        Container(margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
      ],
    ),
  );
  if (Get.context != null) {
    showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

void showMessageDialog(String title, String message) {
  Get.defaultDialog(
    title: title,
    content: Text(message),
  );
}

void dismissDialog() => Get.back();
