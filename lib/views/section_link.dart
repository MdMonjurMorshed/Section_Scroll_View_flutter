import 'package:flutter/material.dart';

import '../model/section.dart';

class SectionLink extends StatelessWidget {
  final Section section;
  final Function(Section) onTap;
  SectionLink({super.key, required this.section, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(section), child: Text(section.title));
  }
}
