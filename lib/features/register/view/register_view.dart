import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/widget/login_button.dart';
import 'package:givit/features/register/controller/register_controller.dart';
import 'package:givit/features/register/view/widget/register_form.dart';
import 'package:givit/shared/widget/login_header.dart';
import 'package:givit/shared/widget/login_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with RegisterViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Ol'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              LoginHeader(
                title: 'Create Account',
              ),
              const Gap(12),
              LoginPageTextField(
                labeltext: "Name",
                prefixIcon: Icon(Icons.person_outline),
              ),
              const Gap(8),
              LoginPageTextField(
                  labeltext: "Last Name",
                  prefixIcon: Icon(Icons.person_outline)),
              const Gap(8),
              IntlPhoneField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              const Gap(8),
              LoginPageTextField(
                labeltext: "Email Address",
                prefixIcon: Icon(Icons.mail_outline),
              ),
              const Gap(8),
              LoginPageTextField(
                labeltext: "Password",
                prefixIcon: Icon(Icons.key),
                obsucuretext: true,
              ),
              const Gap(8),
              LoginPageTextField(
                labeltext: "Confirm Password",
                prefixIcon: Icon(Icons.key),
                obsucuretext: true,
              ),
              const Gap(12),
              LoginButton(
                onPressed: () {
                  GoRouter.of(context).go('/home');
                },
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
