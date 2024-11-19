import 'package:flutter/material.dart';
import 'package:projects/theme/theme.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(padding: const EdgeInsets.only(top: 30),
              child: IconButton(onPressed: ()
              {

              }, icon: Image.asset('assets/hamburger.png')),
            ),
            Padding(padding: EdgeInsets.only(left: 70, top: 30),
              child: Text('Главная', style: AppShrifts.ralewayBold32.copyWith(color: AppColors.black)
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 60, top: 30),
              child: IconButton(onPressed: (){

              }, icon: Image.asset('assets/bag.png')),
            ),
          ],
        ),
      ),
    );
  }
}
