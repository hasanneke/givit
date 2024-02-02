import 'package:flutter/material.dart';
import 'package:givit/features/login/view/login_view.dart';

mixin LoginViewMixin on State<LoginView> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  void login() {
    final isLogin = loginToFirebase();
    if (isLogin) {
      navigateToHomePage();
    } else {
      showErrorMessage();
    }
  }

  bool loginToFirebase() {
    return true;
  }

  void navigateToHomePage() {}
  void showErrorMessage() {}
}
