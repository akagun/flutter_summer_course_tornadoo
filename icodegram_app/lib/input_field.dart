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
      width: 343,
      height: 45,
      child: TextField(
        maxLines: 1,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600),
        decoration: InputDecoration(

            hintText: "${widget.hintText}",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(width: 1, style: BorderStyle.solid, color: Colors.grey)),
      ),
      ),
    );
  }
}