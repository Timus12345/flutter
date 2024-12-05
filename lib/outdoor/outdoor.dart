import 'package:flutter/material.dart';
import 'package:projects/theme/theme.dart';

class outdoor_screen extends StatefulWidget {
  const outdoor_screen({super.key});

  @override
  State<outdoor_screen> createState() => _outdoor_screenState();
}

class _outdoor_screenState extends State<outdoor_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        title: Row(
          children: [
            Padding(padding: const EdgeInsets.only(right: 80),
                child: IconButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    icon: Image.asset('assets/strelka2.png', width: 50, height: 50,))
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10),
              child: Text(
                'Outdoor',
                style: AppShrifts.ralewayBold16.copyWith(color: AppColors.black),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: const EdgeInsets.only(left: 12, top: 5, bottom: 15),
                child: Text('Категории',
                    style: AppShrifts.ralewaySemiBold16.copyWith(color: AppColors.black)
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)

                      ),
                      minimumSize: const Size(110, 50)
                  ),
                  child: Text('Все', style: AppShrifts.poppinsRegular12.copyWith(color: AppColors.black),),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)

                      ),
                      minimumSize: const Size(110, 50)
                  ),
                  child: Text('Outdoor', style: AppShrifts.poppinsRegular12.copyWith(color: AppColors.white),),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)

                      ),
                      minimumSize: const Size(110, 50)
                  ),
                  child: Text('Tennis', style: AppShrifts.poppinsRegular12.copyWith(color: AppColors.black),),
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