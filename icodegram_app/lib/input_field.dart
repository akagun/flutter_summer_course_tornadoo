import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  const InputField({required this.hintText, super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 50,
      child: TextField(
        maxLines: 1,
        style: TextStyle(
            color: Color(0xFFE86B02),
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 12,
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.person, color: Color(0xFFE86B02)),
            hintText: "your name",
            hintStyle: TextStyle(color: Color(0xFFE86B02)),
            suffixIcon: IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.clear, color: Color(0xFFE86B02)),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(width: 0, style: BorderStyle.none))),
      ),
    );
  }
}