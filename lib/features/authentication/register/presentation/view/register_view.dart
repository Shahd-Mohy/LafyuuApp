import 'package:flutter/material.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/authentication/register/presentation/view/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundWhite,
      // TODO: Wrap with BlocProvider when adding Cubit
      body: RegisterViewBody(),
    );
  }
}
