import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final bool isObscureText;
  final void Function(String?)? onSaved;
  final TextEditingController textEditingController;

  const CustomInput({
    required this.hintText,
    required this.prefixIcon,
    required this.isObscureText,
    required this.textEditingController,
    required this.onSaved,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFF171819),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        style: const TextStyle(color: Colors.white),
        obscureText: isObscureText,
        controller: textEditingController,
        onSaved: onSaved,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: isObscureText
              ? const Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                  size: 20,
                )
              : const Icon(
                  Icons.clear,
                  color: Colors.white,
                  size: 16,
                ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          contentPadding: const EdgeInsets.only(
            left: 24.0,
            top: 20.0,
            bottom: 15,
          ),
        ),
      ),
    );
  }
}
