import 'package:flutter/material.dart';
import 'package:givit/features/login/view/login_view.dart';
import 'package:givit/features/register/view/register_view.dart';

mixin RegisterViewMixin on State<RegisterView> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  void login() {
    final isLogin = registerToFirebase();
    if (isLogin) {
      navigateToHomePage();
    } else {
      showErrorMessage();
    }
  }

  bool registerToFirebase() {
    return true;
  }

  void navigateToHomePage() {}
  void showErrorMessage() {}
}
