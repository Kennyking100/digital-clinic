import "package:digital_clinic/pages/sign_up.dart";
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
      home: SignUp(),
    );
  }
}
