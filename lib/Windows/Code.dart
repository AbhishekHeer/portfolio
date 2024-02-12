import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _SourcecodeState();
}

class _SourcecodeState extends State<About> {
  @override
  Widget build(BuildContext context) {
// 706 and 580

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('About'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: 0.0,
            height: width > 580
                ? Get.height * .1
                : width > 706
                    ? Get.width * .06
                    : Get.width * .09,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    width: Get.width * .2,
                    margin: EdgeInsets.only(top: Get.height * .04),
                    child: AutoSizeText(
                      "About Me",
                      style: GoogleFonts.poppins(fontSize: Get.width * .04),
                    ),
                  ),
                ],
              ),
              Container(
                height: width > 580
                    ? Get.height * .6
                    : width > 706
                        ? Get.height * .1
                        : Get.height * .08,
                width: width > 580
                    ? Get.height * .6
                    : width > 706
                        ? Get.width * .1
                        : Get.width * .08,
                decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    border: Border.all(
                        width: width <= 580
                            ? Get.width * .0003
                            : width < 706
                                ? Get.width * .003
                                : Get.width * .0002),
                    borderRadius: BorderRadius.circular(Get.width),
                    image: const DecorationImage(
                        image: AssetImage("Assets/Images/Pic_Ashh.png"),
                        fit: BoxFit.contain)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
