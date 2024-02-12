import 'package:flutter/material.dart';
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
        length: 1,
        child: Column(
          children: [
            TabBar(
                labelColor: Colors.teal,
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "Projects",
                  ),
                ]),
            ViewTab()
          ],
        ));
  }
}
