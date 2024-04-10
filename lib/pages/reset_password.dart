import 'package:digital_clinic/reusables/long_button.dart';
import 'package:flutter/material.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final blueHeight = height * 1 / 3; // Height for blue color

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: blueHeight,
            color: Color.fromRGBO(106, 121, 213, 1.0), // Blue color
            child: Column(
              children: [
                Row(
                  // Adding an icon
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * .05,
                        left: width * .02,
                      ),
                      child: Icon(
                        Icons.local_hospital,
                        size: 96.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: height * 0.05),

                // Text in blue background with right padding
                Padding(
                  padding: EdgeInsets.only(right: width * 0.2), // Adjust right padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Password",
                        style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Create a new password",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white, // White color
              padding: EdgeInsets.only(top: height * 0.02), // Apply top padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //New Password textfiled
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Text(
                      "New Password",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[500], fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05), // Apply horizontal padding
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Adjust the content padding
                      ),
                    ),
                  ),

                  //Repeat password textfiled
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Text(
                      "Repeat Password",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[500], fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05), // Apply horizontal padding
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Adjust the content padding
                      ),
                    ),
                  ),

                  //button
                  SizedBox(height: height * 0.30),

                  LongButton(
                    text: "Sign In",
                    textColor: Colors.white,
                    colors: Color.fromRGBO(106, 121, 213, 1.0),
                    onPressed: (){},
                    borderColor: Colors.transparent,
                  ),

                  SizedBox(height: 15),

                  LongButton(
                    text: "Resend",
                    textColor: Color.fromRGBO(106, 121, 213, 1.0),
                    colors: Colors.white,
                    onPressed: (){},
                    borderColor: Color.fromRGBO(106, 121, 213, 1.0),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
