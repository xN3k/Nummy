import 'package:flutter/material.dart';
import 'package:nummy/feature/auth/presentation/widgets/auth_button.dart';
import 'package:nummy/feature/auth/presentation/widgets/auth_field.dart';
import 'package:nummy/core/theme/app_palette.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: AppPalette.accentColor,
                ),
              ),
              AuthField(controller: emailController, hintText: "Email"),
              AuthField(
                controller: passwordController,
                hintText: "Password",
                isObscuredText: true,
              ),
              AuthButton(onPress: () {}, buttonText: "Sign In"),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppPalette.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
