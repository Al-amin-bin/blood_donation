

import 'package:blood_donation/presentation/UI/screens/find_result_screen.dart';
import 'package:blood_donation/presentation/UI/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindDonnerScreen extends StatefulWidget {
  const FindDonnerScreen({super.key});

  @override
  State<FindDonnerScreen> createState() => _FindDonnerScreenState();
}

class _FindDonnerScreenState extends State<FindDonnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blood Fighter"),
      ),
      body:Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: ShapeDecoration(
          color:AppColors.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find Donor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const Text(
                'Blood  doners around you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              const SizedBox(height: 18,),
              const Text(
                'Choose Blood group',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                height: 72,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                      color: Colors.black38, width:1),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
              const SizedBox(height: 22,),
              const Text(
                'Location',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,

                  contentPadding: const EdgeInsets.symmetric(vertical: 28,horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 130,
                  child: ElevatedButton(
                      onPressed: (){
                        Get.to(()=>const FindResultScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 10
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search),
                          Text("Search"),
                        ],
                      )),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
