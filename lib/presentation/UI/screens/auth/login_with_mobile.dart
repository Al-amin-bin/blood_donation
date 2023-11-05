import 'package:blood_donation/presentation/UI/screens/auth/otp_verification_screen.dart';
import 'package:blood_donation/presentation/UI/utility/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sinup_screen.dart';

class LogInWithMobileScreen extends StatefulWidget {
  const LogInWithMobileScreen({super.key});

  @override
  State<LogInWithMobileScreen> createState() => _LogInWithMobileScreenState();
}

class _LogInWithMobileScreenState extends State<LogInWithMobileScreen> {
  final TextEditingController _mobileTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80,),
                  Center(child: Image.asset(ImageAsset.bloodFighterPng,width: 350,),),

                  const SizedBox(height: 30,),
                  Text("Get Started With",style: Theme.of(context)
                      .textTheme
                      .titleLarge,),
                  const SizedBox(height: 15,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _mobileTEController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Mobile Number";
                      }else if(value.length != 11){
                        return "Enter A valid Mobile Number";
                      }
                      return null;

                    },
                    decoration: const InputDecoration(
                        hintText: "Enter mobile Number",
                      prefixIcon: Icon((Icons.phone))
                    ),
                  )
                  ,const SizedBox(height: 16,),


                  SizedBox(width:double.infinity,child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          Get.off(()=> OtpVerificationScreen());
                        }

                      },
                      child: const Text("Verify"))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have an Account!"),
                      TextButton(onPressed: (){
                        Get.off(()=> SignUpScreen());
                      }, child: const Text("Sign Up"))
                    ],),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
