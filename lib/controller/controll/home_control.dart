import 'package:article/model/section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends GetxController {
  static final realbody =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

  List<Section> sections = [
    Section(GlobalKey(), '1.Section', realbody),
    Section(GlobalKey(), '2.Section', realbody),
    Section(GlobalKey(), '3.Section', realbody),
    Section(GlobalKey(), '4.Section', realbody),
    Section(GlobalKey(), '5.Section', realbody),
    Section(GlobalKey(), '6.Section', realbody),
    Section(GlobalKey(), '7.Section', realbody),
  ];

  onItemClick(section) {
    final targetContext = section.key.currentContext;
    if (targetContext != null) {
      Scrollable.ensureVisible(targetContext,
          duration: Duration(microseconds: 400), curve: Curves.easeInOut);
    }
  }
}
