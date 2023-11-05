

import 'package:blood_donation/presentation/UI/screens/auth/login_screen.dart';
import 'package:blood_donation/presentation/UI/screens/auth/otp_verification_screen.dart';
import 'package:blood_donation/presentation/UI/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
const List<String> bloodList = <String>[
  'A+',
  'A-',
  'B+',
  'B-',
  'O+',
  'O-',
  'AB+',
  'AB-',
];

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTeController = TextEditingController();
  final TextEditingController _phoneTeController = TextEditingController();
  final TextEditingController _passwordTeController = TextEditingController();
  final TextEditingController _confirmPasswordTeController = TextEditingController();
  final TextEditingController _nameTeController = TextEditingController();
  bool _obscureText= true;
  bool _confirmObscureText= true;
  int _selectedColorIndex = 0;
   bool _isChecked = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 18,),
                  Center(
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: ClipRRect(borderRadius: BorderRadius.circular(100),
                            child: Image.asset("asset/images/userman.png"),),
                        ),
                        Positioned(
                          bottom: 0,
                            right: 5,
                            child: Container(
                              height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(Icons.camera_alt,size: 25,color:Colors.white,)))
                      ],
                    ),
                  ),
                  const SizedBox(height: 60,),
                  TextFormField(

                    keyboardType: TextInputType.text,
                    controller: _nameTeController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your full name";
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                        hintText: "Enter Your full Name",
                      fillColor: Colors.grey.withOpacity(0.4),
                      filled: true
                    ),
                  ),
                  const SizedBox(height: 12,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _nameTeController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Location";
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                        prefixIcon: Icon(Icons.location_pin),
                        hintText: "Enter Your Location",
                        fillColor: Colors.grey.withOpacity(0.4),
                      filled: true
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Text("Gender",style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  SizedBox(
                    height: 80,
                    child: Column(
                    children: [
                    Container(
                    width: 58,
                      height: 58,
                      decoration: ShapeDecoration(

                        image:   DecorationImage(
                          image: AssetImage("asset/images/icon/man.png"),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),const Spacer(),
                    Text(
                      "Male",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,

                      ),
                    ),
                ],
              ),
                  ),

                      Container(
                        height: 60,
                        width: 2,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 80,
                        child: Column(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              decoration: ShapeDecoration(

                                image:   DecorationImage(
                                  image: AssetImage("asset/images/icon/femaleIcon.png"),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),const Spacer(),
                            Text(
                              "Female",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                  SizedBox(height: 12,),
                  Text("Select Blood Group",style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(height: 12,),
              SizedBox(
                height: 70,
                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemCount: bloodList.length,
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                      _selectedColorIndex = index;
                        if(mounted){
                          setState(() {
                          });
                        }
                      },
                      child:Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(

                          border: Border.all(),
                          color: _selectedColorIndex == index ? AppColors.primaryColor:null,
                          borderRadius: BorderRadius.circular(100),

                        ),
                        child: Center(child: Text(bloodList[index],style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)),
                      )



                      );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10,);
                },),

              ),
                  SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    // fillColor: MaterialStateProperty.resolveWith(AppColors.primaryColor),
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Text("Sign Up as Donors",style: TextStyle(fontSize: 20,color: Colors.black),)
                ],
              ),

                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _emailTeController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Email";
                      }else if(value!.isEmail== false){
                        return "Enter a valid Email Address";
                      }
                      return null;

                    },
                    decoration:  const InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                        // label: Text("Email")
                      hintText: "Enter Your Email",

                    ),
                  ),
                  const SizedBox(height: 12,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _phoneTeController,

                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Phone Number";
                      }else if(value.length !=11){
                        return "Enter A valid Phone Number";
                      }
                      return null;

                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                        hintText: "Phone Number"
                    ),
                  ),
                  const SizedBox(height: 12,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: _obscureText,
                    controller: _passwordTeController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Password";
                      }else if(value.length >5){
                        return "Enter A valid Phone Number";
                      }
                      return null;

                    },
                    decoration:  InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
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
                  const SizedBox(height: 12,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: _confirmObscureText,
                    controller: _confirmPasswordTeController,
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Enter Your Confirm Password";
                      }else if(_passwordTeController ==_confirmPasswordTeController ){
                        return "No match Password";
                      }
                      return null;

                    },
                    decoration:  InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                            onTap:(){
                              setState(() {
                              });
                              _confirmObscureText = !_confirmObscureText;
                            },
                            child:_confirmObscureText? const Icon(Icons.visibility_off):const Icon(Icons.visibility)),
                        hintText: " Confirm password"
                    ),
                  ),


                  const SizedBox(height: 12,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                        }
                        Get.off(()=> const OtpVerificationScreen());
                      },
                      child: const Text("Sign Up"),
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an Account!"),
                      TextButton(onPressed: (){
                        Get.off(()=> const LoginScreen());
                      }, child: const Text("Sign In"))
                    ],)

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
