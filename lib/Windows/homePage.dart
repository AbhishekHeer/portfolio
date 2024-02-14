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
                      onTap: () => DownloadController().contact(context),
                      child: AutoSizeText(
                        'Hire Me',
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
                  CircleAvatar(
                      radius: Get.width * .03,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          'Assets/Images/Pic_Ashh.png',
                          fit: BoxFit.contain,
                          width: w,
                          height: Get.height,
                        ),
                      )),
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
                            const Text("Hire Me")
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
                  height:
                      w > 706 && w < 1100 ? Get.height * .5 : Get.height * .6,
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
                            width: w > 580 ? Get.width * .4 : Get.width,
                            decoration: const BoxDecoration(
                                // color: Colors.black,
                                ),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: Get.height * .02),
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
                                          right: Get.width * .03,
                                          left: Get.width * .03),
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
                                    SizedBox(
                                        width: 0.0,
                                        height: w > 708
                                            ? Get.height * .02
                                            : w > 580
                                                ? Get.height * .01
                                                : 0.0),
                                    Row(
                                      mainAxisAlignment: w > 580
                                          ? MainAxisAlignment.spaceAround
                                          : MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () => DownloadController()
                                              .download("Assets/CV/CV.pdf"),
                                          child: Container(
                                            width: w > 580
                                                ? Get.width * .16
                                                : Get.width * .3,
                                            height: w > 780
                                                ? Get.width * .034
                                                : Get.height * .06,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: Get.width * .0005),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Get.height * .04),
                                                gradient: const LinearGradient(
                                                    end: Alignment.centerRight,
                                                    begin: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.white,
                                                      Colors.tealAccent
                                                    ])),
                                            child: Center(
                                              child: AutoSizeText(
                                                "Download CV",
                                                style: GoogleFonts.poppins(
                                                    color:
                                                        ThemeMode.dark == true
                                                            ? Colors.white
                                                            : Colors.black,
                                                    fontSize: Get.width * .01,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width: w < 580
                                                ? Get.width * .08
                                                : w * .01,
                                            height: 0.0),
                                        InkWell(
                                          onTap: () => DownloadController()
                                              .contact(context),
                                          child: Container(
                                            width: w > 580
                                                ? Get.width * .12
                                                : Get.width * .3,
                                            height: w > 780
                                                ? Get.width * .034
                                                : Get.height * .06,
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: Get.width * .0005),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Get.height * .04),
                                                gradient: const LinearGradient(
                                                    end: Alignment.centerRight,
                                                    begin: Alignment.centerLeft,
                                                    colors: [
                                                      Colors.white,
                                                      Colors.tealAccent
                                                    ])),
                                            child: Center(
                                              child: AutoSizeText(
                                                "Hire Me",
                                                style: GoogleFonts.poppins(
                                                    color:
                                                        ThemeMode.dark == true
                                                            ? Colors.white
                                                            : Colors.black,
                                                    fontSize: Get.width * .01,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          w > 580
                              ? Container(
                                  height: Get.height,
                                  width: Get.width * .4,
                                  decoration: const BoxDecoration(
                                    // color: Colors.amber,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "Assets/Images/Pic_Ashh.png"),
                                    ),
                                  ),
                                )
                              : const SizedBox(width: 0.0, height: 0.0)
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
