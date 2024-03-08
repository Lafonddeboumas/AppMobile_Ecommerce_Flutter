import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._();

  //Ligth Text Theme
  static TextTheme lightTextTheme = TextTheme(
    //Head
    headlineLarge: GoogleFonts.poppins(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: GoogleFonts.nunito(
        fontSize: 28.0, fontWeight: FontWeight.w800, color: Colors.black),
    headlineSmall: GoogleFonts.nunito(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),

    //TItle
    titleLarge: GoogleFonts.nunito(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),

    //Body
    bodyLarge: GoogleFonts.nunito(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    bodySmall: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5)),

    //Label
    labelLarge: GoogleFonts.poppins(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );

  //dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),

    //TItle
    titleLarge: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),

    //Body
    bodyLarge: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: GoogleFonts.poppins(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),

    //Label
    labelLarge: GoogleFonts.poppins(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: Colors.white.withOpacity(0.5)),
  );
}
