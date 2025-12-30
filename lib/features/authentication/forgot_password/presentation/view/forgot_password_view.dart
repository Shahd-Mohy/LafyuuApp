import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/features/authentication/forgot_password/presentation/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        backgroundColor: backgroundWhite,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: textSecondary, size: 20.sp),
          onPressed: () => context.pop(),
        ),
      ),
      // TODO: Wrap with BlocProvider when adding Cubit
      body: const ForgotPasswordViewBody(),
    );
  }
}
