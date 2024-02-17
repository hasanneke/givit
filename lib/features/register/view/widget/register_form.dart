import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/widget/login_text_field.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginPageTextField(
          labeltext: "Name",
          prefixIcon: Icon(Icons.person_outline),
        ),
        const Gap(8),
        LoginPageTextField(
            labeltext: "Last Name", prefixIcon: Icon(Icons.person_outline)),
        const Gap(8),
        IntlPhoneField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
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
      ],
    );
  }
}
