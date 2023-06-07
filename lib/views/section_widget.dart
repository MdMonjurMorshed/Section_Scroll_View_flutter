import 'package:article/model/section.dart';
import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Section section;
  SectionWidget({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color(0xfffff8e2),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              section.title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              section.body,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.black54, height: 1.3),
            )
          ],
        ));
  }
}
