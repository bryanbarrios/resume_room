import 'package:flutter/material.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: KColors.blueGray[400]!,
          ),
        ),
        child: Icon(
          icon,
          size: 20,
          color: KColors.blueGray[400],
        ),
      ),
    );
  }
}
