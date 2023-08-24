
import 'package:flutter/material.dart';
import 'package:icodegram_app/components/text_input_field.dart';
import 'package:icodegram_app/recourse/auth_methods.dart';
import 'package:icodegram_app/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  hintText: 'Хэрэглэгчийн имэйл',
                  isPassword: false,
                  editingController: _emailController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  isPassword: false,
                  editingController: _userNameController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 24),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  editingController: _passwordController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 24),
                TextFieldInput(
                  hintText: 'Нууц үг давтах',
                  isPassword: true,
                  editingController: _validatePasswordController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 24),
                InkWell(
                  onTap: () => {
                    AuthMethods().signUpUser(
                        email: _emailController.text,
                        password: _passwordController.text,
                        username: _userNameController.text)
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        gradient: const LinearGradient(
                    colors: [Color(0xFFE86B02), Color(0xFFFA9541)])
                    ),
                    child: Text('Бүртгүүлэх'),
                  ),
                ),
                Text('Эсвэл', style: TextStyle(color: Colors.grey),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Бүртгэлтэй юү?', style: TextStyle(color: Colors.grey)),
                    InkWell(
                        child: Text('Нэвтрэх', style: TextStyle(color: Colors.orange),),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                        }
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Flexible(flex: 2, child: Container())
              ],
            ),
          ),
        ));
  }
}
