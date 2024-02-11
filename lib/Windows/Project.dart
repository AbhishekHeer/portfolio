import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Download/cv_download.dart';
import 'package:portfolio/Getx/fetchlocal.dart';
import 'package:portfolio/Getx/hover.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

ColorsController change_Color = Get.put(ColorsController());
LocalJSONController localapi = Get.put(LocalJSONController());
// List data = [];

class _ProjectsState extends State<Projects> {
  @override
  @override
  void initState() {
    super.initState();

    localapi.fetch();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Obx(() => GridView.builder(
          // shrinkWrap: true,
          itemCount: localapi.data.length,
          itemBuilder: (context, index) {
            return Padding(
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
                                  left: Get.width * .07,
                                  top: width <= 580
                                      ? Get.height * .03
                                      : width > 706
                                          ? Get.width * .03
                                          : Get.height * .06),
                              child: AutoSizeText(
                                localapi.data[index]['application'],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: Get.width * .03),
                              )),
                          SizedBox(
                            width: Get.width * .4,
                            child: AutoSizeText(
                              localapi.data[index]["Description"].toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: width <= 580
                                      ? Get.width * .01
                                      : width > 720
                                          ? Get.width * .016
                                          : Get.width * .02),
                            ),
                          ),
                          SizedBox(
                              height: width > 720
                                  ? Get.height * .02
                                  : width > 580
                                      ? Get.width * .0
                                      : Get.height * .2),
                          Obx(() => Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: width > 706
                                      ? Get.width * .14
                                      : width > 580
                                          ? Get.width * .15
                                          : Get.width * .1,
                                  height: width > 706
                                      ? Get.height * .06
                                      : width >= 580
                                          ? Get.width * .07
                                          : Get.height * .04,
                                  decoration: BoxDecoration(
                                      color: change_Color.change.value == true
                                          ? Colors.tealAccent
                                          : Colors.transparent,
                                      backgroundBlendMode: BlendMode.darken,
                                      borderRadius: BorderRadius.circular(
                                          Get.width * .04),
                                      border: Border.all(color: Colors.black)),
                                  child: InkWell(
                                    onTap: () => DownloadController().download(
                                        localapi.data[index]["link"]
                                            .toString()),
                                    child: Center(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: Get.width * .004,
                                          decoration: const BoxDecoration(),
                                        ),
                                        AutoSizeText(
                                          "Download",
                                          style: GoogleFonts.poppins(
                                              fontSize: Get.width * .005),
                                        ),
                                        Icon(
                                          CupertinoIcons.right_chevron,
                                          size: Get.width * .015,
                                        ),
                                        SizedBox(
                                          width: Get.width * .001,
                                        ),
                                      ],
                                    )),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(localapi.data[index]["image"]),
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
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: width > 706
                  ? 1.9
                  : width > 580
                      ? 2.2
                      : 2.6),
        ));
  }
}
