import 'package:flutter/material.dart';
import 'package:projects/navigation_menu/BottomNavBar.dart';
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
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/hamburger.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: Text(
                'Главная',
                style: AppShrifts.ralewayBold32.copyWith(color: AppColors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 10),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/bag.png'),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: AppColors.black,
                    decoration: InputDecoration(
                        fillColor: AppColors.white,
                        filled: true,
                        hintText: ('Поиск'),
                        prefixIcon: const Icon(Icons.search),
                        hintStyle: AppShrifts.poppinsMedium14.copyWith(color: AppColors.darkGrey.withOpacity(0.6)),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.blue,
                  child: IconButton(
                    icon: Image.asset('assets/sliders.png', color: AppColors.lightGrey),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(right: 260, top: 5, bottom: 15),
            child: Text('Категории',
                style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
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
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)

                      ),
                      minimumSize: const Size(110, 50)
                  ),
                  child: Text('Outdoor', style: AppShrifts.poppinsRegular12.copyWith(color: AppColors.black),),
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
            padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Популярное",
                  style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/favour');
                  },
                  child: Text(
                    "Все",
                    style: AppShrifts.poppinsMedium12.copyWith(color: AppColors.blue),
                  ),
                )
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
            padding: const EdgeInsets.only(left: 15, right: 15, top: 40, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Акции",
                  style: AppShrifts.ralewayMedium16.copyWith(color: AppColors.black),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Все",
                    style: AppShrifts.poppinsMedium12.copyWith(color: AppColors.blue),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: IconButton(
                    onPressed: () {

                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.zero,
                    ),
                    icon: Image.asset('sale.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
