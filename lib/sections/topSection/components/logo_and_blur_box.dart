import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/sections/topSection/components/glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/Logo.png'),
        const Spacer(),
        GlassContent(size: size),
        const Spacer(flex: 5),
      ],
    );
  }
}
