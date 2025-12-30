import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/common/widgets/buttons/primary_button.dart';
import 'package:lafayuu_app/core/common/widgets/buttons/social_button.dart';
import 'package:lafayuu_app/core/common/widgets/custom_text_field.dart';
import 'package:lafayuu_app/core/routes/app_routes.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitLogin() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      // TODO: Add Cubit login logic here
      Future.delayed(const Duration(seconds: 2), () {
        setState(() => _isLoading = false);
        context.go(AppRouter.kHomeView);
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
              SizedBox(height: 68.h),
              Image.asset('assets/logos/logo.png', height: 72.h, width: 72.w),
              SizedBox(height: 16.h),
              Text(
                'Welcome to Lafyuu',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: textPrimary,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: textSecondary,
                  letterSpacing: 0.5,
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
              CustomTextFormField(
                controller: _passwordController,
                hintText: 'Password',
                prefixIcon: Icons.lock_outline,
                isobsecureText: !_isPasswordVisible,
                sufIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: textSecondary,
                  ),
                  onPressed: () {
                    setState(() => _isPasswordVisible = !_isPasswordVisible);
                  },
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              PrimaryButton(
                title: _isLoading ? 'Loading...' : 'Sign In',
                isLoading: _isLoading,
                onPressed: _submitLogin,
              ),
              SizedBox(height: 21.h),
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: borderLight, thickness: 1),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: textSecondary,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: borderLight, thickness: 1),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              SocialButton(
                title: 'Login with Google',
                iconPath: 'assets/logos/google.png',
                onPressed: () {},
              ),
              SizedBox(height: 8.h),
              SocialButton(
                title: 'Login with Facebook',
                iconPath: 'assets/logos/Facebook.png',
                onPressed: () {},
              ),
              SizedBox(height: 16.h),
              TextButton(
                onPressed: () => context.push(AppRouter.kForgotPasswordView),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: primaryBlue,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have a account? ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: textSecondary,
                      letterSpacing: 0.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.push(AppRouter.kRegisterView),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: primaryBlue,
                        letterSpacing: 0.5,
                      ),
                    ),
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
