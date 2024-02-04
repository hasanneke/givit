import 'package:flutter/material.dart';
import 'package:givit/features/login/controller/login_controller.dart';
import 'package:givit/features/login/view/widget/login_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 50, bottom: 60),
            child: Image.asset(
              "assets/images/logo.png",
              height: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: LoginPageTextField(
              labeltext: 'Email',
              prefixIcon: Icon(
                Icons.mail,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: LoginPageTextField(
              labeltext: 'Password',
              obsucuretext: true,
              prefixIcon: Icon(
                Icons.key,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: TextButton(
                onPressed: () {}, child: Text("Forgot your password?")),
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                height: 60,
                width: 200,
                child: Center(
                    child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.green[100]),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(onPressed: () {}, child: Text("Sign Up"))
            ],
          ),
          Text("-Or Sing in With-"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
                onPressed: () {},
                child: Image.asset(
                  "assets/images/google.png",
                  height: 40,
                )),
          )
        ],
      ),
    ));
  }
}
