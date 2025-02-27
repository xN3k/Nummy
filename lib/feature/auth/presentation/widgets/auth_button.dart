import 'package:flutter/material.dart';
import 'package:nummy/core/theme/app_palette.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPress;
  final String buttonText;
  const AuthButton({
    super.key,
    required this.onPress,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        shadowColor: AppPalette.transparentColor,
        minimumSize: const Size(double.infinity, 65),
        backgroundColor: AppPalette.primaryColor,
        foregroundColor: AppPalette.primaryTextColor,
      ),
      onPressed: onPress,
      child: Text(buttonText, style: TextStyle(fontSize: 18)),
    );
  }
}
