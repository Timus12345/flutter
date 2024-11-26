import 'package:flutter/material.dart';
import 'package:projects/theme/theme.dart';

class popular_screen extends StatefulWidget {
  const popular_screen({super.key});

  @override
  State<popular_screen> createState() => _popular_screenState();
}

class _popular_screenState extends State<popular_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        title: Row(
          children: [
            Padding(padding: const EdgeInsets.only(right: 60),
                child: IconButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/cart');
                    },
                    icon: Image.asset('assets/strelka2.png', width: 50, height: 50,))
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Избранное',
                style: AppShrifts.ralewayBold16.copyWith(color: AppColors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/heart.png', color: AppColors.black,),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.zero,
                  ),
                  icon: Image.asset('assets/nike.png'),
                ),
                IconButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.zero,
                  ),
                  icon: Image.asset('nike_cart.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.zero,
                  ),
                  icon: Image.asset('nike_cart.png'),
                ),
                IconButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.zero,
                  ),
                  icon: Image.asset('nike_cart.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.zero,
                  ),
                  icon: Image.asset('nike_cart.png'),
                ),
                IconButton(
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.zero,
                  ),
                  icon: Image.asset('nike_cart.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}