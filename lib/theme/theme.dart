import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors
{
  static const lightGrey = Color(0xFFF7F7F9);
  static const black = Color(0xFF2B2B2B);
  static const blue = Color(0xFF48B2E7);
  static const grey = Color(0xFF707B81);
  static const red = Color(0xFFF87265);
  static const darkGrey = Color(0xFF6A6A6A);
  static const lightBlue = Color(0xFFDFEFFF);
  static const pink = Color(0xFFFFF8F8);
  static const deepGrey = Color(0xFF7D848D);
  static const white = Color(0xFFFFFFFF);
}

abstract class AppShrifts
{
  static var ralewayBold32 = GoogleFonts.raleway(fontSize: 32, fontWeight: FontWeight.bold);
  static var ralewayBold16 = GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.bold);
  static var ralewaySemiBold14 = GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w600);
  static var ralewaySemiBold21 = GoogleFonts.raleway(fontSize: 21, fontWeight: FontWeight.w600);
  static var ralewayMedium16 = GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w500);
  static var ralewayRegular12 = GoogleFonts.raleway(fontSize: 12, fontWeight: FontWeight.normal);
  static var ralewaySemiBold16 = GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w600);

  static var poppinsRegular16 = GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.normal);
  static var poppinsMedium14 = GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500);
  static var poppinsMedium16 = GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500);
  static var poppinsMedium12 = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500);
  static var poppinsRegular12 = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal);
  static var poppinsRegular18 = GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600);
}
