import "package:digital_clinic/pages/home_page.dart";
import "package:digital_clinic/pages/reset_password.dart";
import "package:digital_clinic/pages/sign_in.dart";
import "package:digital_clinic/pages/sign_up.dart";
import "package:digital_clinic/reusables/bottom_navbar.dart";
import "package:flutter/material.dart";

void main(){
  runApp(DigitalClinic());
}

class DigitalClinic extends StatelessWidget {
  const DigitalClinic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
