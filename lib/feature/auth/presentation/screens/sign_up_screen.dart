import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nummy/feature/auth/presentation/widgets/auth_button.dart';
import 'package:nummy/feature/auth/presentation/widgets/auth_field.dart';
import 'package:nummy/core/theme/app_palette.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: AppPalette.accentColor,
                    ),
                  ),
                  AuthField(controller: nameController, hintText: "Name"),
                  AuthField(controller: emailController, hintText: "Email"),
                  AuthField(
                    controller: passwordController,
                    hintText: "Password",
                    isObscuredText: true,
                  ),
                  AuthButton(onPress: () {}, buttonText: "Sign Up"),
                  GestureDetector(
                    onTap: () => context.goNamed("sign_in"),
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                            text: "Sign In",
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium!.copyWith(
                              color: AppPalette.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
