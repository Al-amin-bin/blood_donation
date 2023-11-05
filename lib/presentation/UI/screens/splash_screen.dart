import 'package:blood_donation/presentation/UI/screens/auth/login_screen.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }
  goToNextScreen(){
    Future.delayed(const Duration(seconds: 3)).then((value) =>
    Get.off(()=>const LoginScreen() )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
         children: [
           const Spacer(),
           Center(child: Image.asset("asset/images/Blood-logo.png",),),
           const Spacer(),
           const CircularProgressIndicator(color: Color(0xFFEC718D),),
           const SizedBox(height: 15,),
           const Text("Version 1.1.0",style: TextStyle(fontSize: 16,color: Colors.black),),
           const SizedBox(height: 15,)

         ],
       ),
     ),
    );
  }
}
