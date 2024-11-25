import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projects/forgot_pass/forgot_pass.dart';
import 'package:projects/home/home.dart';
import 'package:projects/reg_screen/reg_screen.dart';
import 'package:projects/sign_in/sign_in.dart';
import 'package:projects/verify/verify.dart';
import 'package:projects/holder/holder.dart';
import 'package:projects/favourite/favourite.dart';
import 'package:projects/cart_screen/cart_screen.dart';

import 'package:supabase_flutter/supabase_flutter.dart';



void main() async
{

  await Supabase.initialize(
    url: 'https://hdrlryctevalgmiuucrh.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhkcmxyeWN0ZXZhbGdtaXV1Y3JoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE2NDA4NTcsImV4cCI6MjA0NzIxNjg1N30.gDaIdbYLwSPZI08jEZuei_CoOz3nGJvU8z8-FbAmwEU',
  );

  runApp(MaterialApp(
    initialRoute: '/',
    routes:
    {
      '/': (context) => const sign_in(),
      '/reg': (context) => const reg_screen(),
      '/forgot': (context) => const forgot_pass(),
      '/verify': (context) => const verification_screen(),
      '/holder': (context) => const holder_screen(),
      '/home': (context) => const home_screen(),
      '/favour': (context) => const favourite_screen(),
      '/cart': (context) => const cart_screen()
    },
  ));
}

