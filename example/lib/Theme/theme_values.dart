
import 'package:example/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



Color primaryColor = const Color.fromRGBO(85, 152, 233, 1);

String primaryColorTypeString ="";

///Light
Color scaffoldBackgroundColorForLightTheme = const Color.fromRGBO(246, 246, 246, 1);
Color cardColorForLightTheme = const Color.fromRGBO(255, 255, 255, 1);
///Dark
Color scaffoldBackgroundColorForDarkTheme = const Color(0xFF0F0F0F).withOpacity(0.7);
Color cardColorForDarkMode = const Color(0xFF2D2D2D).withOpacity(0.7);



ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
    textStyle: MaterialStateProperty.all<TextStyle>(
      GoogleFonts.cairo(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),
    ),
    elevation: MaterialStateProperty.all<double>(4), // Button elevation
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Button padding
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    ),
  ),
);


/// ----  lightTheme  ----
final ThemeData appTheme = ThemeData.light().copyWith(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: scaffoldBackgroundColorForLightTheme,
  cardColor: cardColorForLightTheme,
  elevatedButtonTheme: elevatedButtonTheme,

  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),
  brightness: Brightness.light,
  textTheme: TextTheme(
    /** FontWeight.w100: Thin
        FontWeight.w200: Extra Light (Ultra Light)
        FontWeight.w300: Light
        FontWeight.w400: Regular (Normal)
        FontWeight.w500: Medium
        FontWeight.w600: Semi Bold (Demi Bold)
        FontWeight.w700: Bold
        FontWeight.w800: Extra Bold (Ultra Bold)
        FontWeight.w900: Black (Heavy)
      * */
    displayLarge: GoogleFonts.cairo(fontSize: 57).copyWith(color: Colors.black),
    displayMedium: GoogleFonts.cairo(fontSize: 30).copyWith(color: Colors.black),
    displaySmall: GoogleFonts.cairo(fontSize: 36).copyWith(color: Colors.black),
    headlineLarge: GoogleFonts.cairo(fontSize: 32).copyWith(color: Colors.black),
    headlineMedium: GoogleFonts.cairo(fontSize: 28).copyWith(color: Colors.black),
    headlineSmall: GoogleFonts.cairo(fontSize: 24).copyWith(color: Colors.black),
    titleLarge: GoogleFonts.cairo(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),
    titleMedium: GoogleFonts.cairo(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),

    // style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).canvasColor),
    titleSmall: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),

    labelLarge: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.w700,color: Colors.black),

    // style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).canvasColor),
    bodyLarge: GoogleFonts.cairo(fontSize: 15,fontWeight: FontWeight.w400).copyWith(color: Colors.black),

    // style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
    // style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).canvasColor),
    // style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).disabledColor),
    labelMedium: GoogleFonts.cairo(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),


    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).canvasColor),
    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).disabledColor),
    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey),
    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.red),
    labelSmall: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),



    bodyMedium: GoogleFonts.cairo(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black),

    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).canvasColor),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).primaryColor),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.red),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.green),
    bodySmall: GoogleFonts.cairo(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),
  ),
  disabledColor: const Color.fromRGBO(165, 165, 165, 1),
  canvasColor: const Color.fromRGBO(18, 18, 18, 1),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return primaryColor;
      }
      return Colors.transparent;
    }),
  ),
  snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(
          color: Color.fromRGBO(18, 18, 18, 1), fontFamily: "taleeq-bold")),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    color: const Color.fromRGBO(255, 255, 255, 0.9),
  ),

);

/// ----  DarkTheme  ----
final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: scaffoldBackgroundColorForDarkTheme,
  cardColor: cardColorForDarkMode,
  elevatedButtonTheme: elevatedButtonTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ),
  brightness: Brightness.dark,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.cairo(fontSize: 57).copyWith(color: Colors.white),
    displayMedium: GoogleFonts.cairo(fontSize: 30).copyWith(color: Colors.white),
    displaySmall: GoogleFonts.cairo(fontSize: 36).copyWith(color: Colors.white),
    headlineLarge: GoogleFonts.cairo(fontSize: 32).copyWith(color: Colors.white),
    headlineMedium: GoogleFonts.cairo(fontSize: 28).copyWith(color: Colors.white),
    headlineSmall: GoogleFonts.cairo(fontSize: 24).copyWith(color: Colors.white),
    titleLarge: GoogleFonts.cairo(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),
    titleMedium: GoogleFonts.cairo(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),

    // style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).canvasColor),
    titleSmall: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),

    labelLarge: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.w700,color: Colors.white),

    // style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).canvasColor),
    bodyLarge: GoogleFonts.cairo(fontSize: 15,fontWeight: FontWeight.w400).copyWith(color: Colors.white),

    // style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
    // style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).canvasColor),
    // style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).disabledColor),
    labelMedium: GoogleFonts.cairo(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),


    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).canvasColor),
    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Theme.of(context).disabledColor),
    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey),
    // style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.red),
    labelSmall: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),



    bodyMedium: GoogleFonts.cairo(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),

    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).canvasColor),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).primaryColor),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.red),
    // style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.green),
    bodySmall: GoogleFonts.cairo(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return primaryColor;
      }
      return cardColorForDarkMode; // Change to your desired color for unselected checkboxes.
    }),
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    color:  const Color(0xFF0F0F0F).withOpacity(0.7)
    // color: const Color(0xFF0F0F0F).withOpacity(0.2),
  ),
  canvasColor: Colors.white.withOpacity(0.87),

);
