import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Download/cv_download.dart';
import 'package:portfolio/Windows/tabbar.dart';

class HomeViewWindow extends StatefulWidget {
  const HomeViewWindow({super.key});

  @override
  State<HomeViewWindow> createState() => _HomeViewWindowState();
}

class _HomeViewWindowState extends State<HomeViewWindow> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width > 706;
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
              fontSize: w ? Get.width * .015 : Get.width * .036,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          const Text('About'),
          SizedBox(width: Get.width * .03),
          const Text('Project'),
          SizedBox(width: Get.width * .03),
          const Text('Contacts'),
          SizedBox(width: Get.width * .03),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              child: ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  height: w ? Get.height * .6 : Get.height * .5,
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
                                              fontSize: w
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
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    w
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize:
                                                                  Get.width *
                                                                      .01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .contact(),
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
                                                      "Hire Me",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize:
                                                                  Get.width *
                                                                      .01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: Get.width * .03,
                                                  height: 0.0),
                                            ],
                                          )
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .download(
                                                            "Assets/CV/CV.pdf"),
                                                child: Container(
                                                  width: Get.width * .25,
                                                  height: Get.height * .06,
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
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize:
                                                                  Get.width *
                                                                      .01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () =>
                                                    DownloadController()
                                                        .contact(),
                                                child: Container(
                                                  width: Get.width * .15,
                                                  height: Get.height * .06,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width:
                                                            Get.width * .0005),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Get.height * .04),
                                                    // gradient:
                                                    //     const LinearGradient(
                                                    //   end:
                                                    //       Alignment.centerRight,
                                                    //   begin:
                                                    //       Alignment.centerLeft,
                                                    //   colors: [
                                                    //     Colors.white,
                                                    //     Colors.tealAccent
                                                    //   ],
                                                    // ),
                                                  ),
                                                  child: Center(
                                                    child: AutoSizeText(
                                                      "Hire Me",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize:
                                                                  Get.width *
                                                                      .01,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
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
            const Tabbars()
          ],
        ),
      ),
    );
  }
}
