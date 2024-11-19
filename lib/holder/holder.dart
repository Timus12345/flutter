import 'package:flutter/material.dart';
import 'package:projects/theme/theme.dart';

class holder_screen extends StatelessWidget {
  const holder_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 290, top: 40),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: Image.asset(
                'assets/strelka.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20, top: 0),
            child: Text('holder',
                style: AppShrifts.ralewayBold32.copyWith(color: AppColors.black)
            ),
          ),
        ],
      ),
    );
  }
}