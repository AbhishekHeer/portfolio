import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Windows/tabbarviw.dart';

class Tabbars extends StatefulWidget {
  const Tabbars({super.key});

  @override
  State<Tabbars> createState() => _TabbarsState();
}

class _TabbarsState extends State<Tabbars> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  text: "Projects",
                ),
                Tab(
                  text: "Souce Code",
                )
              ]),
              ViewTab()
            ],
          ),
        ));
  }
}
