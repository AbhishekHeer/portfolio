import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Download/cv_download.dart';
import 'package:portfolio/Getx/hover.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _SourcecodeState();
}

ColorsController change = Get.put(ColorsController());

class _SourcecodeState extends State<About> {
  @override
  Widget build(BuildContext context) {
// 706 and 580

    double Wid(double a, double b, double c) {
      final www = MediaQuery.of(context).size.width;
      return www > 706
          ? www * a
          : www > 580
              ? www * b
              : www * c;
    }

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: width > 580 || width < 580
                  ? Get.height * .0
                  : width > 706
                      ? Get.height * .03
                      : Get.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: <Widget>[
                    width > 580 && width < 706 || width < 580
                        ? Center(
                            child: Container(
                              height: width * .3,
                              width: width * .3,
                              decoration: BoxDecoration(
                                  color: Colors.tealAccent,
                                  border: Border.all(width: Get.width * .002),
                                  borderRadius:
                                      BorderRadius.circular(Get.width),
                                  image: const DecorationImage(
                                      filterQuality: FilterQuality.high,
                                      image: AssetImage(
                                          "Assets/Images/Pic_Ashh.png"),
                                      fit: BoxFit.contain)),
                            ),
                          )
                        : const SizedBox(width: 0.0, height: 0.0),
                    SizedBox(
                      width: Get.width * .2,
                      // margin: EdgeInsets.only(top: Get.height * .04) ,
                      child: AutoSizeText(
                        "About Me",
                        style: GoogleFonts.poppins(
                          color: Colors.teal,
                          fontSize: width > 706
                              ? width * .04
                              : width > 580
                                  ? width * .03
                                  : Get.width * .04,
                        ),
                      ),
                    ),
                    Container(
                      width: width > 706
                          ? width * .5
                          : width > 580
                              ? width * .9
                              : width * .8,
                      margin: EdgeInsets.only(
                        top: width > 706
                            ? width * .04
                            : width > 580
                                ? width * .04
                                : Get.width * .03,
                      ),
                      child: AutoSizeText(
                        "Software development is not for the faint of heart, but for those who thrive on challenges and find beauty in logic. It's a journey of endless discovery, where every line of code holds the potential to change the world, one keystroke at a time. I have 1 year experience in flutter development I am done my state management in getx and provider",
                        style: GoogleFonts.poppins(
                          fontSize: width > 706
                              ? width * .015
                              : width > 580
                                  ? width * .02
                                  : Get.width * .024,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Wid(0.05, 0.05, 0.05)),
                      child: Obx(() => Container(
                            width: width > 706
                                ? width * .17
                                : width > 580
                                    ? width * .2
                                    : width * .24,
                            height: Wid(0.04, 0.06, 0.06),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white,
                                  change.change.value == true
                                      ? Colors.tealAccent
                                      : Colors.white
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.circular(Wid(0.01, 0.01, 0.01)),
                              border: Border.all(
                                  color: Colors.black, width: width * .0004),
                            ),
                            child: InkWell(
                              onHover: (value) {
                                change.changecolor(value);
                              },
                              onTap: () =>
                                  DownloadController().contact(context),
                              child: Center(
                                  child: AutoSizeText(
                                "Hire Me",
                                style: GoogleFonts.poppins(color: Colors.black),
                              )),
                            ),
                          )),
                    )
                  ],
                ),
                width > 706
                    ? Container(
                        height: width > 580
                            ? Get.height * .4
                            : width > 706
                                ? Get.height * .1
                                : Get.height * .08,
                        width: width > 580
                            ? Get.height * .4
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
                                filterQuality: FilterQuality.high,
                                image: AssetImage("Assets/Images/Pic_Ashh.png"),
                                fit: BoxFit.contain)),
                      )
                    : const SizedBox(width: 0.0, height: 0.0)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
