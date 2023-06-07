import 'package:article/views/section_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/section.dart';

class TableOfContent extends StatelessWidget {
  final List<Section> section;
  final Function(Section) onItemTap;
  TableOfContent({super.key, required this.section, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 10),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: section
            .map((e) => SectionLink(
                  section: e,
                  onTap: onItemTap,
                ))
            .toList(),
      ),
    );
  }
}
