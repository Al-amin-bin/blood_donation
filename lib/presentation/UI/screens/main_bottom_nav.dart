import 'package:blood_donation/presentation/UI/screens/find_donners_screen.dart';
import 'package:blood_donation/presentation/UI/screens/home_screen.dart';
import 'package:blood_donation/presentation/UI/screens/profile_screen.dart';
import 'package:blood_donation/presentation/UI/screens/request_blood_screen.dart';
import 'package:blood_donation/presentation/UI/utility/app_color.dart';
import 'package:blood_donation/presentation/state%20holders/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final List _screen = [
    const HomeScreen(),
    const FindDonnerScreen(),
    const RequestBloodScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (mainBottomNavController) {
        return Scaffold(
          body: _screen[mainBottomNavController.currentSelectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:mainBottomNavController.currentSelectedIndex ,
            onTap: mainBottomNavController.changeScreen,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon:  Icon(Icons.home_filled),label: "Home"),
              BottomNavigationBarItem(icon:  Icon(Icons.account_box_outlined),label: "Find Donner"),
              BottomNavigationBarItem(icon:  Icon(Icons.list_alt_sharp),label: "Request"),
              BottomNavigationBarItem(icon:  Icon(Icons.account_circle_outlined),label: "Profile"),

            ],
          ),
        );
      }
    );
  }
}
