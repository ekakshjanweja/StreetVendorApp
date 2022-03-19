import 'package:flutter/material.dart';
import 'package:waffle/constants/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const CustomButton({
    required this.buttonText,
    required this.buttonColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 56,
      decoration: BoxDecoration(
        color: buttonColor  ,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.height * 0.03,
        ),
      ),
    );
  }
}
