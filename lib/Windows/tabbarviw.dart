import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Windows/Code.dart';
import 'package:portfolio/Windows/Project.dart';

class ViewTab extends StatefulWidget {
  const ViewTab({super.key});

  @override
  State<ViewTab> createState() => _ViewTabState();
}

class _ViewTabState extends State<ViewTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Get.height,
        width: Get.width * .8,
        child: const TabBarView(
            physics: AlwaysScrollableScrollPhysics(),
            children: [Projects(), Sourcecode()]));
  }
}
