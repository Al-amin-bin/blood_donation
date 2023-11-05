import 'package:blood_donation/application/state_holder_binders.dart';
import 'package:blood_donation/presentation/UI/screens/splash_screen.dart';
import 'package:blood_donation/presentation/UI/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BloodFighter extends StatelessWidget {
  const BloodFighter({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: "Blood Donation",
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
          primarySwatch:
          MaterialColor(AppColors.primaryColor.value, AppColors().color),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey,)),
          enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      initialBinding: StateHolderBinders(),
    );
  }
}
