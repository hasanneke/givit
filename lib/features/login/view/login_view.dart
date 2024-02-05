import 'package:flutter/material.dart';
import 'package:givit/features/login/controller/login_controller.dart';
import 'package:givit/features/login/view/widget/login_icon_view.dart';
import 'package:givit/shared/widget/login_text_field.dart';

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
          const LoginIconView(),
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
                onPressed: () {}, child: const Text("Forgot your password?")),
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.green[100]),
                child: const Center(
                    child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
              )),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("-Sign in With-"),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              "assets/images/google.png",
              height: 50,
              width: 50,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(onPressed: () {}, child: const Text("Sign Up"))
            ],
          ),
        ],
      ),
    ));
  }
}
