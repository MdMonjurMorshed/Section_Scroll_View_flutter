import 'package:article/controller/controll/home_control.dart';
import 'package:article/model/section.dart';
import 'package:article/views/section_widget.dart';
import 'package:article/views/table_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ArticlePage extends StatelessWidget {
  final List<Section> section;
  ArticlePage({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final myController = Get.find<MyHome>();

    TableOfContent tableOfContent = TableOfContent(
      section: section,
      onItemTap: (section) => myController.onItemClick(section),
    );

    final listView = ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: section.length,
      itemBuilder: (context, index) {
        final sec = section[index];
        return Column(
          children: [
            SectionWidget(key: sec.key, section: sec),
          ],
        );
      },
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [tableOfContent, listView],
        ),
      ),
    );
  }
}
