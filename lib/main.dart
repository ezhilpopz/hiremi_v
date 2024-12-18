import 'package:flutter/material.dart';
import 'package:hirimee/screens/verfied_profile_section.dart';

void main() {
  runApp(const HireMi());
}

class HireMi extends StatelessWidget {
  const HireMi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerifiedProfileSection(),
    );
  }
}
