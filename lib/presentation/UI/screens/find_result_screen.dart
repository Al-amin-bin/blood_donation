import 'package:blood_donation/presentation/UI/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindResultScreen extends StatefulWidget {
  const FindResultScreen({super.key});

  @override
  State<FindResultScreen> createState() => _FindResultScreenState();
}

class _FindResultScreenState extends State<FindResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: ShapeDecoration(
                color: AppColors.primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 36),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "asset/images/Group 225.svg",
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'A+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "asset/images/Vector.svg",
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'Mirpur 10',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Found 10 doners arround you',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 16,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: double.infinity,
                    height: 197,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF868484)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 70,
                                height: 93,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFFEFEF),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFFFF9F9)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    const Center(
                                      child: Text(
                                        'A',
                                        style: TextStyle(
                                          color: Color(0xFFD9214B),
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: SvgPicture.asset(
                                          "asset/images/icon/bloodicon.svg"),
                                    ),
                                    Positioned(
                                      right: 1,
                                      top: 10,
                                      child: Icon(Icons.add,color: AppColors.primaryColor,size: 30,),),
                                    const Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 6),
                                        child: Text(
                                          '0.3 Unit',
                                          style: TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 12,
                                            fontFamily: 'Lexend',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                            ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
                               child: Container(
                                 width: 250,
                                 child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Male, 21yr old ',
                                            style: TextStyle(
                                              color: Color(0xFF490008),
                                              fontSize: 22,
                                              fontFamily: 'Lexend',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                          Icon(Icons.call,color: AppColors.primaryColor,),
                                          const Icon(Icons.more_vert)
                                        ],
                                      ),
                                      const SizedBox(height: 4,),
                                      const Row(
                                        children: [
                                          Icon(Icons.person,size: 22,),
                                          SizedBox(width: 5,),
                                          Text(
                                            'MD. Al-amin',
                                            style: TextStyle(
                                              color: Color(0xFF868484),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4,),
                                      const Row(
                                        children: [
                                          Icon(Icons.location_pin,size: 22,),
                                          SizedBox(width: 5,),
                                          Text(
                                            'Mirpur 13, Dhaka',
                                            style: TextStyle(
                                              color: Color(0xFF868484),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,

                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4,),
                                      const Row(
                                        children: [
                                          Icon(Icons.my_location_outlined,size: 18,),
                                          SizedBox(width: 5,),
                                          Text(
                                            '3.5 Km',
                                            style: TextStyle(
                                              color: Color(0xFF868484),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12,),
                                      Row(
                                        children: [
                                          const Text(
                                            'Time Limit:',
                                            style: TextStyle(
                                              color: Color(0xFF868484),
                                              fontSize: 12,

                                              fontWeight: FontWeight.w600,

                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Container(
                                            width: 75,
                                            height: 20,
                                            decoration: ShapeDecoration(
                                              color: AppColors.primaryColor,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '02-11-2023',
                                                style: TextStyle(
                                                  color: Colors.white.withOpacity(0.800000011920929),
                                                  fontSize: 12,
                                                  fontFamily: 'Lexend',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                               ),
                             ),

                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color:Color(0xFF868484).withOpacity(.7),
                          child: Row(
                            children: [
                              SizedBox(width: 200,
                              child: ElevatedButton(
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.share),
                                    Text(
                                      'share',
                                      style: TextStyle(
                                        color: Color(0xFF868484),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,

                                      ),
                                    ),
                                  ],
                                ),
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
