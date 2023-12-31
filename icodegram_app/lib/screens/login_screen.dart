import 'package:flutter/material.dart';
import 'package:icodegram_app/components/text_input_field.dart';
import 'package:icodegram_app/pages/home_screen.dart';
import 'package:icodegram_app/pages/sign_up.dart';

import '../recourse/auth_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void loginUser() async {
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
      print('Logged in');
    } else {
      result = 'not logged in';
    }
  }

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
            Text(
              'iCodegram',
              style: TextStyle(
                fontSize: 35.5333366394043,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 52, left: 176, right: 176)),
            TextFieldInput(
                hintText: 'Нэвтрэх нэр',
                isPassword: false,
                editingController: _emailController,
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: 24,
            ),
            TextFieldInput(
                hintText: 'Нууц үг',
                isPassword: true,
                editingController: _passwordController,
                textInputType: TextInputType.text),
            SizedBox(
              height: 64,
            ),
            InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      gradient: const LinearGradient(
                          colors: [Color(0xFFE86B02), Color(0xFFFA9541)])),
                  child: Center(
                    child: Text('Нэвтрэх'),
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            Text('Эсвэл', style: TextStyle(color: Colors.grey)),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Text('Шинэ хэрэглэгч үү?', style: TextStyle(color: Colors.grey)),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                 },
                 child:  Text('Бүртгүүлэх', style: TextStyle(color: Colors.orange),),
               ),
             ],
           ),
            Flexible(flex: 2, child: Container()),
          ],
        ),
      ),
    ));
  }
}

// body: SafeArea(
// child: Container(
// padding: EdgeInsets.symmetric(horizontal: 32),
// width: double.infinity,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Flexible(flex: 2, child: Container()),
// Text("iCodegram",
