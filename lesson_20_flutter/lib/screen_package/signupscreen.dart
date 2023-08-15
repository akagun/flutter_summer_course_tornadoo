import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';
import 'package:lesson_20_flutter/resources/auth_methods.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _validatePasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            SizedBox(
              height: 64,
            ),
            TextFieldInput(
              hintText: 'User email',
              isPassword: false,
              editingController: _emailController,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Username',
              isPassword: false,
              editingController: _userNameController,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 24),
            TextFieldInput(
              hintText: 'Password',
              isPassword: true,
              editingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 24),
            TextFieldInput(
              hintText: 'Repeat Password',
              isPassword: true,
              editingController: _validatePasswordController,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                AuthMethods().signUpUser(
                    email: _emailController.text,
                    password: _passwordController.text,
                    username: _userNameController.text);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)))),
                child: Text('Sign up'),
              ),
            ),
            SizedBox(height: 12),
            Flexible(flex: 2, child: Container())
          ],
        ),
      ),
    ));
  }
}
