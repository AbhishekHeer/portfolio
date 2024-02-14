// ignore: file_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Download/cv_download.dart';
import 'package:portfolio/Getx/fetchlocal.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

// ignore: non_constant_identifier_names
LocalJSONController localapi = Get.put(LocalJSONController());

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
    return Obx(() => width > 580
        ? Padding(
            padding: EdgeInsets.only(
              left: Get.width * .06,
              right: Get.width * .06,
            ),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: localapi.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: Get.height * .1),
                  child: Container(
                      decoration: BoxDecoration(
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
                                              : Get.height * .02),
                                  child: AutoSizeText(
                                    localapi.data[index]['application'],
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        // ignore: unrelated_type_equality_checks
                                        color: ThemeMode.dark == true
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: Get.width * .02),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Get.width * .04,
                                    top: Get.width * .03),
                                child: SizedBox(
                                  width: Get.width * .4,
                                  child: AutoSizeText(
                                    localapi.data[index]["Description"]
                                        .toString(),
                                    style: GoogleFonts.poppins(
                                      fontSize: width <= 580
                                          ? Get.width * .01
                                          : width > 720
                                              ? Get.width * .013
                                              : Get.width * .01,
                                      // ignore: unrelated_type_equality_checks
                                      color: ThemeMode.dark == true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: width > 706 && width < 990
                                      ? Get.height * .0
                                      : width > 580
                                          ? Get.height * .02
                                          : Get.height * .02),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: width > 706 || width < 990
                                          ? Get.width * .0
                                          : Get.width * .03,
                                      height: 0.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: width < 706 && width > 990
                                            ? width * .0
                                            : Get.width * .04,
                                        top: width * .03),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: width > 706 && width < 990
                                              ? Get.width * .16
                                              : width > 580
                                                  ? Get.width * .15
                                                  : Get.width * .1,
                                          height: width > 706 && width < 990
                                              ? Get.height * .05
                                              : width >= 580
                                                  ? Get.width * .05
                                                  : Get.height * .04,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Get.width * .04),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: InkWell(
                                            onTap: () => DownloadController()
                                                .download(localapi.data[index]
                                                        ["link"]
                                                    .toString()),
                                            child: Center(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: Get.width * .004,
                                                  decoration:
                                                      const BoxDecoration(),
                                                ),
                                                AutoSizeText(
                                                  "Download",
                                                  style: GoogleFonts.poppins(
                                                      color:
                                                          // ignore: unrelated_type_equality_checks
                                                          ThemeMode.dark == true
                                                              ? Colors.white
                                                              : Colors.black,
                                                      fontSize:
                                                          Get.width * .01),
                                                ),
                                                Icon(
                                                  CupertinoIcons.right_chevron,
                                                  size: Get.width * .02,
                                                  // ignore: unrelated_type_equality_checks
                                                  color: ThemeMode.dark == true
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                                SizedBox(
                                                  width: Get.width * .001,
                                                ),
                                              ],
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: width > 706
                                          ? Get.width * .0
                                          : Get.width * .03,
                                      height: 0.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: width < 706
                                            ? Get.width * .0
                                            : Get.width * .08,
                                        top: width * .03),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: width > 706 && width < 990
                                              ? Get.width * .17
                                              : width > 580
                                                  ? Get.width * .19
                                                  : Get.width * .1,
                                          height: width > 706 && width < 990
                                              ? Get.height * .05
                                              : width >= 580
                                                  ? Get.width * .05
                                                  : Get.height * .04,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Get.width * .04),
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: InkWell(
                                            onTap: () => DownloadController()
                                                .repolink(localapi.data[index]
                                                        ["repo_link"]
                                                    .toString()),
                                            child: Center(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: Get.width * .004,
                                                  decoration:
                                                      const BoxDecoration(),
                                                ),
                                                AutoSizeText(
                                                  "Source Code",
                                                  style: GoogleFonts.poppins(
                                                      color:
                                                          // ignore: unrelated_type_equality_checks
                                                          ThemeMode.dark == true
                                                              ? Colors.white
                                                              : Colors.black,
                                                      fontSize:
                                                          Get.width * .01),
                                                ),
                                                Icon(
                                                  FontAwesomeIcons.github,
                                                  size: Get.width * .02,
                                                  // ignore: unrelated_type_equality_checks
                                                  color: ThemeMode.dark == true
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                                SizedBox(
                                                  width: Get.width * .001,
                                                ),
                                              ],
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage(localapi.data[index]["image"]),
                              ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(Get.width * .02),
                                  bottomRight:
                                      Radius.circular(Get.width * .02)),
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
                      ? 2.3
                      : width > 580
                          ? 2.1
                          : 1,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3),
            ),
          )
        : Padding(
            padding: EdgeInsets.all(Get.width * .06),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: localapi.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: Get.width * .04),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: Get.width * .0004),
                          borderRadius: BorderRadius.circular(Get.width * .02)),
                      child: ListTile(
                        title: Text(
                          localapi.data[index]["application"],
                          style: GoogleFonts.poppins(fontSize: Get.width * .04),
                        ),
                        subtitle: Text(
                          localapi.data[index]["Description"].toString(),
                          style: GoogleFonts.poppins(fontSize: Get.width * .02),
                        ),
                        trailing: CircleAvatar(
                          child: InkWell(
                            onTap: () => DownloadController()
                                .download(localapi.data[index]["link"]),
                            child: const Center(
                              child: Icon(CupertinoIcons.down_arrow),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ));
  }
}
