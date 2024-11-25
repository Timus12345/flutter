import 'package:flutter/material.dart';
import 'package:projects/navigation_menu/BottomNavBar.dart';
import 'package:projects/theme/theme.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({super.key});

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        title: Row(
          children: [
            Padding(padding: const EdgeInsets.only(right: 60),
                child:
                IconButton(onPressed: (){}, icon: Image.asset('assets/strelka2.png', width: 50, height: 50,))
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Корзина',
                style: AppShrifts.ralewayBold16.copyWith(color: AppColors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
