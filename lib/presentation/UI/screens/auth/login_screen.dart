import 'package:blood_donation/presentation/UI/screens/auth/login_with_mobile.dart';
import 'package:blood_donation/presentation/UI/screens/auth/otp_verification_screen.dart';
import 'package:blood_donation/presentation/UI/screens/auth/sinup_screen.dart';
import 'package:blood_donation/presentation/UI/utility/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60,),
                  Center(child: Image.asset(ImageAsset.bloodFighterLogoPng,width: 300,),),

                  const SizedBox(height: 40,),
                  Text("Get Started With",style: Theme.of(context)
                      .textTheme
                      .titleLarge,),
                  const SizedBox(height: 15,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _phoneTEController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Email address";
                      }else if(value!.isEmail == false){
                        return "Enter A valid Email address";
                      }
                      return null;

                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Your Email",
                      prefixIcon: Icon(Icons.email_outlined)
                    ),
                  )
                  ,const SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: _obscureText,
                    controller: _passwordTEController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Password";
                      }else if(value.length >5){
                        return "Enter A valid Phone Number";
                      }
                      return null;

                    },
                    decoration:  InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                          onTap:(){
                            setState(() {
                            });
                            _obscureText = !_obscureText;
                          },
                          child:_obscureText? const Icon(Icons.visibility_off):const Icon(Icons.visibility)),
                      hintText: "password"
                    ),
                  ),
                  Align(alignment: Alignment.centerRight,child: TextButton(onPressed: (){}, child: const Text("Forgot Password")),),
                  SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Sign In"))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Text("Don't Have an Account!"),
                    TextButton(onPressed: (){
                      Get.off(()=> const SignUpScreen());
                    }, child: const Text("Sign Up"))
                  ],),
                  SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){
                    Get.to(()=>const LogInWithMobileScreen());
                  }, child: const Text("Sign In with Mobile"))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
