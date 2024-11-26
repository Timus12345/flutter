import 'package:flutter/material.dart';

Widget appBar(context)
{
  return Stack(
    children: [
      Padding(padding: const EdgeInsets.only(top: 31),
        child: Image.asset('assets/button.png', width: double.infinity, fit: BoxFit.fitWidth),
      ),
      Positioned(
        top: 90,
        left: 20,
        child: IconButton(onPressed: ()
        {
          Navigator.pushReplacementNamed(context, '/home');
        },
            icon: Image.asset('home-2.png')),
      ),
      Positioned(
        top: 90,
        left: 85,
        child: IconButton(onPressed: ()
        {
          Navigator.pushReplacementNamed(context, '/favour');
        },
            icon: Image.asset('heart.png')),
      ),
      Positioned(
        top: 90,
        left: 250,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('notify.png')),
      ),
      Positioned(
        top: 90,
        left: 310,
        child: IconButton(onPressed: ()
        {

        },
            icon: Image.asset('profile.png')),
      ),
      Positioned(
        bottom: 10,
        left: 128,
        child: IconButton(onPressed: ()
        {
          Navigator.pushReplacementNamed(context, '/cart');
        },
            icon: Image.asset('bag2.png')),
      )
    ],
  );
}