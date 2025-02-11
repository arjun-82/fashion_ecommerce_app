import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SocialLabelBar extends StatelessWidget {
  const SocialLabelBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      spacing: Spacing.medium,
      children: [
        SocialButton(
          iconData: FontAwesomeIcons.google,
        ),
        SocialButton(
          iconData: FontAwesomeIcons.facebook,
        ),
        SocialButton(
          iconData: FontAwesomeIcons.apple,
        ),
      ],
    );
  }
}


/// Sub Widget of Social Media label
/// Social Button

class SocialButton extends StatelessWidget {
  final VoidCallback? onConnect;
  final IconData iconData;
  const SocialButton({
    super.key,
    this.onConnect,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: onConnect,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: isDark ? MainPalette.tertiary : MainPalette.secondary,
        child: FaIcon(iconData),
      ),
    );
  }
}
