import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projects/forgot_pass.dart';
import 'package:projects/reg_screen.dart';
import 'package:projects/sign_in.dart';
import 'package:projects/verify.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:
    {
      '/': (context) => const sign_in(),
      '/reg': (context) => const reg_screen(),
      '/forgot': (context) => const forgot_pass(),
      '/verify': (context) => const verification_screen()
    },
  ));
}