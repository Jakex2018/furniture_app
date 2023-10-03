import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/products/screen_product.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: kPrimaryColor),
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const ScreenProduct(),
    );
  }
}