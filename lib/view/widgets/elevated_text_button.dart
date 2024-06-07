import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_color.dart';

class ElevatedTextButton extends StatelessWidget {
  const ElevatedTextButton({
    super.key,
    this.text,
    this.onPressed,
    this.width,
    this.borderRadius,
    this.backgroundColor,
  });

  final String? text;
  final VoidCallback? onPressed;
  final double? width;
  final double? borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          )
        ),
        child: Text(
          text!,
          style: const TextStyle(
            color: AppColor.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
