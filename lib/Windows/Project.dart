import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width > 706;
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, childAspectRatio: 2.6),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: Get.height * .1),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.white, Colors.tealAccent]),
                borderRadius: BorderRadius.circular(Get.width * .02),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(
                              left: Get.width * .07, top: Get.height * .06),
                          child: AutoSizeText(
                            'Chatt App',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: Get.width * .03),
                          )),
                      SizedBox(
                        width: Get.width * .4,
                        child: const AutoSizeText(
                            'I created this personal project in order to show how to create an interface in flutter using a portfolio as an example.'),
                      ),
                      SizedBox(width: 0.0, height: Get.height * .2),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          child: const Text("ksljf"),
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('Assets/Images/chat.jpg'),
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Get.width * .02),
                          bottomRight: Radius.circular(Get.width * .02)),
                    ),
                    height: Get.height,
                    width: Get.width * .4,
                  ),
                ],
              )),
        )
      ],
    );
  }
}
