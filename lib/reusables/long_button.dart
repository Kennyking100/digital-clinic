import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String text;
  final Color colors;
  final VoidCallback onPressed;

  const LongButton({
    Key? key,
    required this.text,
    required this.colors,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Container(
        height: height * 0.06, // 8% of the screen height
        width: width * 0.9, // 90% of the screen width
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}