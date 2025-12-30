import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lafayuu_app/core/common/widgets/buttons/primary_button.dart';
import 'package:lafayuu_app/core/common/widgets/custom_text_field.dart';
import 'package:lafayuu_app/core/utils/constatns/const_assets.dart';
import 'package:lafayuu_app/core/utils/constatns/const_colors.dart';
import 'package:lafayuu_app/core/utils/constatns/text_styles.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitRegister() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      // TODO: Add Cubit register logic here
      Future.delayed(const Duration(seconds: 2), () {
        setState(() => _isLoading = false);
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
              SizedBox(height: 68.h),
              Image.asset(AppAssets.logo, height: 72.h, width: 72.w),
              SizedBox(height: 16.h),
              Text("Let's Get Started", style: AppStyles.title),
              SizedBox(height: 8.h),
              Text('Create a new account', style: AppStyles.subtitle),
              SizedBox(height: 28.h),
              CustomTextFormField(
                controller: _nameController,
                hintText: 'Full Name',
                prefixIcon: Icons.person_outline,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
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
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                controller: _confirmPasswordController,
                hintText: 'Password Again',
                prefixIcon: Icons.lock_outline,
                isobsecureText: !_isConfirmPasswordVisible,
                sufIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: textSecondary,
                  ),
                  onPressed: () {
                    setState(
                      () => _isConfirmPasswordVisible =
                          !_isConfirmPasswordVisible,
                    );
                  },
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              PrimaryButton(
                title: _isLoading ? 'Loading...' : 'Sign Up',
                isLoading: _isLoading,
                onPressed: _submitRegister,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('have a account? ', style: AppStyles.body),
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
