
import 'package:ecommerceflutter/presentation/bottom_nav/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:const Size(360, 690),
      child: MaterialApp(
          theme: ThemeData(
            // Use GoogleFonts to define your custom font throughout the app
            textTheme: GoogleFonts.quicksandTextTheme( // Replace 'roboto' with any desired Google Font
              Theme.of(context).textTheme,
            ),
          ),
        debugShowCheckedModeBanner: false,
        home: BottomNavScreen(),
      ),
    );
  }
}
  