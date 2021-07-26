import 'package:awesome_chat/ui/home/home.dart';
import 'package:awesome_chat/ui/home/home_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var appPages = [
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
    binding: HomeBinding(),
  ),
];
