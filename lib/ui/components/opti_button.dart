import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_colors.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';

class OptiButton extends StatelessWidget {
  final bool isLoading;
  final String label;
  final Function() submit;
  final Color color;
  final bool disabled;
  final List<Color>? gradientColors;
  final Color? labelColor;

  const OptiButton({
    Key? key,
    required this.isLoading,
    required this.label,
    required this.submit,
    required this.color,
    this.gradientColors,
    this.disabled = false,
    this.labelColor,
  }) : super(key: key);

  Color? btnColor() {
    if (disabled) {
      return kcVeryLightGrey;
    } else {
      if (gradientColors != null) return null;
      if (isLoading) {
        return color.withOpacity(0.7);
      } else {
        return color;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: disabled || isLoading ? () {} : submit,
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: btnColor(),
          borderRadius: BorderRadius.circular(5),
          gradient: gradientColors != null && disabled == false
              ? LinearGradient(
                  colors: gradientColors!,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )
              : null,
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 2,
                    ),
                  ),
                )
              : Text(
                  label,
                  style: ktButtonTextStyle.copyWith(color: labelColor),
                ),
          // style: TextStyle(
          //     color: labelColor ?? Colors.white,
          //     fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
