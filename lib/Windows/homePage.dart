import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Download/cv_download.dart';
import 'package:portfolio/Windows/Code.dart';
import 'package:portfolio/Windows/Footer/footer.dart';
import 'package:portfolio/Windows/Project.dart';

class HomeViewWindow extends StatefulWidget {
  const HomeViewWindow({super.key});

  @override
  State<HomeViewWindow> createState() => _HomeViewWindowState();
}

class _HomeViewWindowState extends State<HomeViewWindow> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.white, Colors.tealAccent],
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.tealAccent,
          title: AutoSizeText(
            'Abhishek Heer',
            style: GoogleFonts.wixMadeforDisplay(
                color: ThemeMode.dark == true ? Colors.white : Colors.black,
                fontSize: w > 706 ? Get.width * .015 : Get.width * .036,
                fontWeight: FontWeight.w500),
          ),
          actions: w > 580
              ? [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()),
                        );
                      },
                      child: AutoSizeText(
                        'About',
                        style: GoogleFonts.poppins(
                          color: ThemeMode.dark == true
                              ? Colors.white
                              : Colors.black,
                          fontSize: w < 706
                              ? Get.width * .03
                              : w < 580
                                  ? Get.width * .05
                                  : Get.width * .012,
                        ),
                      )),
                  SizedBox(width: Get.width * .03),
                  InkWell(
                      child: AutoSizeText(
                    'Contact',
                    style: GoogleFonts.poppins(
                        color: ThemeMode.dark == true
                            ? Colors.white
                            : Colors.black,
                        fontSize: w < 706
                            ? Get.width * .03
                            : w < 580
                                ? Get.width * .05
                                : Get.width * .012),
                  )),
                  SizedBox(width: Get.width * .03),
                ]
              : [
                  PopupMenuButton<int>(
                    iconColor: Colors.black,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.settings),
                            SizedBox(
                              width: Get.width * .08,
                            ),
                            const Text("About")
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const About()),
                          );
                        },
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.person),
                            SizedBox(
                              width: Get.width * .08,
                            ),
                            const Text("Contact")
                          ],
                        ),
                        onTap: () => DownloadController().contact(context),
                      ),
                    ],
                    offset: Offset(0, Get.width * .08),
                    elevation: 1,
                  ),
                ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              child: ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  height: w > 706 ? Get.height * .5 : Get.height * .5,
                  // width: Get.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.white, Colors.tealAccent],
                    ),
                  ),

                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: Get.height,
                            width: Get.width * .5,
                            decoration: const BoxDecoration(
                                // color: Colors.black,
                                ),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.height * .03),
                                      child: Center(
                                        child: AutoSizeText(
                                          'Flutter developer',
                                          style: GoogleFonts.poppins(
                                              color: ThemeMode.dark == true
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: w > 706
                                                  ? Get.width * .03
                                                  : Get.width * .04,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.height * .03,
                                          right: Get.width * .03),
                                      child: SizedBox(
                                        height: Get.height * .2,
                                        child: AutoSizeText(
                                          '''I'm always learning and exploring new ways to push the boundaries of Flutter development. If you're looking for a skilled and enthusiastic developer to build your next amazing app, let's connect!''',
                                          style: GoogleFonts.poppins(
                                              color: ThemeMode.dark == true
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: w > 706
                                                  ? w * .015
                                                  : w > 580
                                                      ? w * .01
                                                      : w * .01,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    w > 706
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .download(
                                                            "Assets/CV/CV.pdf"),
                                                child: Container(
                                                  width: Get.width * .15,
                                                  height: Get.height * .06,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: Get.width *
                                                              .0005),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Get.height * .04),
                                                      gradient:
                                                          const LinearGradient(
                                                              end: Alignment
                                                                  .centerRight,
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              colors: [
                                                            Colors.white,
                                                            Colors.tealAccent
                                                          ])),
                                                  child: Center(
                                                    child: AutoSizeText(
                                                      "Download CV",
                                                      style: GoogleFonts.poppins(
                                                          color: ThemeMode
                                                                      .dark ==
                                                                  true
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontSize:
                                                              Get.width * .01,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .contact(context),
                                                child: Container(
                                                  width: Get.width * .3,
                                                  height: Get.height * .05,
                                                  decoration: BoxDecoration(
                                                      color: Colors.amber,
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: Get.width *
                                                              .0005),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Get.height * .04),
                                                      gradient:
                                                          const LinearGradient(
                                                              end: Alignment
                                                                  .centerRight,
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              colors: [
                                                            Colors.white,
                                                            Colors.tealAccent
                                                          ])),
                                                  child: Center(
                                                    child: AutoSizeText(
                                                      "Hire Me",
                                                      style: GoogleFonts.poppins(
                                                          color: ThemeMode
                                                                      .dark ==
                                                                  true
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontSize:
                                                              Get.width * .01,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Get.width * .03,
                                                  height: 0.0),
                                            ],
                                          )
                                        : Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .download(
                                                            "Assets/CV/CV.pdf"),
                                                child: Container(
                                                  width: Get.width * .25,
                                                  height: Get.height * .055,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: Get.width *
                                                              .0005),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Get.width * .04),
                                                      gradient:
                                                          const LinearGradient(
                                                              end: Alignment
                                                                  .centerRight,
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              colors: [
                                                            Colors.white,
                                                            Colors.tealAccent
                                                          ])),
                                                  child: Center(
                                                    child: AutoSizeText(
                                                      "Download CV",
                                                      style: GoogleFonts.poppins(
                                                          color: ThemeMode
                                                                      .dark ==
                                                                  true
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontSize:
                                                              Get.width * .01,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height: Get.height * .03),
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .contact(context),
                                                child: Container(
                                                  width: w > 706
                                                      ? Get.width * .15
                                                      : Get.width * .15,
                                                  height: w > 706
                                                      ? Get.height * .06
                                                      : Get.height * .055,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width:
                                                            Get.width * .0005),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Get.height * .04),
                                                  ),
                                                  child: Center(
                                                    child: AutoSizeText(
                                                      "Hire Me",
                                                      style: GoogleFonts.poppins(
                                                          color: ThemeMode
                                                                      .dark ==
                                                                  true
                                                              ? Colors.white
                                                              : Colors.black,
                                                          fontSize:
                                                              Get.width * .01,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Get.width * .03,
                                                  height: 0.0),
                                            ],
                                          ),
                                  ],
                                )),
                          ),
                          Container(
                            height: Get.height,
                            width: Get.width * .4,
                            decoration: const BoxDecoration(
                              // color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage("Assets/Images/Pic_Ashh.png"),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: AutoSizeText(
                "Projects",
                style: GoogleFonts.poppins(
                    fontSize: w > 706
                        ? Get.width * .017
                        : w > 506
                            ? w * .03
                            : w * .02,
                    color:
                        // ignore: unrelated_type_equality_checks
                        ThemeMode.dark == true ? Colors.black : Colors.white),
              ),
            ),
            Divider(
              color: Colors.tealAccent,
              indent: w * .44,
              endIndent: Get.width * .44,
              thickness: w * .0007,
            ),
            const Projects(),
            const Footor(),
          ],
        ),
      ),
    );
  }
}
