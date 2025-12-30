import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/common/widgets/buttons/primary_button.dart';
import 'package:lafayuu_app/core/common/widgets/custom_text_field.dart';
import 'package:lafayuu_app/core/utils/constatns/const_assets.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/core/utils/constatns/text_styles.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submitResetPassword() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      // TODO: Add Cubit reset password logic here
      Future.delayed(const Duration(seconds: 2), () {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Password reset link sent to your email'),
            backgroundColor: successGreen,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        );
        context.pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 48.h),
              Image.asset(AppAssets.logo, height: 72.h, width: 72.w),
              SizedBox(height: 16.h),
              Text('Forgot Password', style: AppStyles.title),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Text(
                  'Enter your email address to reset your password',
                  style: AppStyles.subtitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 28.h),
              CustomTextFormField(
                controller: _emailController,
                hintText: 'Your Email',
                prefixIcon: Icons.mail_outline,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}',
                  ).hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              PrimaryButton(
                title: _isLoading ? 'Loading...' : 'Reset Password',
                isLoading: _isLoading,
                onPressed: _submitResetPassword,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Remember password? ', style: AppStyles.body),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Text('Sign In', style: AppStyles.link),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
