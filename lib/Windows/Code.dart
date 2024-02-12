import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Sourcecode extends StatefulWidget {
  const Sourcecode({super.key});

  @override
  State<Sourcecode> createState() => _SourcecodeState();
}

class _SourcecodeState extends State<Sourcecode> {
  @override
  @override
  Widget build(BuildContext context) {
// 706 and 580

    final width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        SizedBox(
          width: 0.0,
          height: width > 580
              ? Get.height * .1
              : width > 706
                  ? Get.width * .06
                  : Get.width * .09,
        ),
        Container(
          width: Get.width,
          margin: EdgeInsets.only(top: Get.height * .04),
          child: Center(
            child: AutoSizeText(
              "About ",
              style: GoogleFonts.poppins(fontSize: Get.width * .05),
            ),
          ),
        ),
        Center(
            child: Container(
          height: width > 580
              ? Get.height * .4
              : width > 706
                  ? Get.height * .1
                  : Get.height * .08,
          width: width > 580
              ? Get.height * .4
              : width > 706
                  ? Get.height * .1
                  : Get.height * .08,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.transparent, Colors.tealAccent]),
              borderRadius: BorderRadius.circular(Get.width),
              image: const DecorationImage(
                  image: AssetImage("Assets/Images/Pic_Ashh.png"),
                  fit: BoxFit.contain)),
        )),
      ],
    );
  }
}
