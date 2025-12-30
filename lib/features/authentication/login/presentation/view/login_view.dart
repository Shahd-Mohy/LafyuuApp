import 'package:flutter/material.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/authentication/login/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundWhite,
      // TODO: Wrap with BlocProvider when adding Cubit
      body: LoginViewBody(),
    );
  }
}
