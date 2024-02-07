import 'package:flutter/material.dart';
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
        LoginPageTextField(
            labeltext: "Last Name", prefixIcon: Icon(Icons.person_outline)),
        IntlPhoneField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
        LoginPageTextField(
          labeltext: "Email Address",
          prefixIcon: Icon(Icons.mail_outline),
        ),
        LoginPageTextField(
          labeltext: "Password",
          prefixIcon: Icon(Icons.key),
          obsucuretext: true,
        ),
        LoginPageTextField(
          labeltext: "Confirm Password",
          prefixIcon: Icon(Icons.key),
          obsucuretext: true,
        ),
      ],
    );
  }
}
