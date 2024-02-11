import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Download/cv_download.dart';
// import 'package:portfolio/Getx/fetchlocal.dart';
import 'package:portfolio/Getx/hover.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

ColorsController change_Color = Get.put(ColorsController());
List data = [];

class _ProjectsState extends State<Projects> {
  @override
  @override
  void initState() {
    super.initState();
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width < 706;
    return GridView.builder(
      // shrinkWrap: true,
      itemCount: data.length,
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
                              left: Get.width * .07, top: Get.height * .06),
                          child: AutoSizeText(
                            data[index]['application'],
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: Get.width * .03),
                          )),
                      SizedBox(
                        width: Get.width * .4,
                        child:
                            AutoSizeText(data[index]["Description"].toString()),
                      ),
                      SizedBox(
                          width: 0.0,
                          height: w ? Get.height * .01 : Get.height * .2),
                      Obx(() => Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: w ? Get.width * .2 : Get.width * .1,
                              height: w ? Get.height * .06 : Get.height * .07,
                              decoration: BoxDecoration(
                                  color: change_Color.change.value == true
                                      ? Colors.tealAccent
                                      : Colors.transparent,
                                  backgroundBlendMode: BlendMode.darken,
                                  borderRadius:
                                      BorderRadius.circular(Get.width * .04),
                                  border: Border.all(color: Colors.black)),
                              child: InkWell(
                                onTap: () => DownloadController()
                                    .download(data[index]["link"].toString()),
                                child: Center(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: Get.width * .004,
                                      decoration: const BoxDecoration(),
                                    ),
                                    const AutoSizeText("Download"),
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
                        image: AssetImage(data[index]["image"]),
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
          crossAxisCount: 1, childAspectRatio: w ? 1.9 : 2.6),
    );
  }

  Future<void> fetch() async {
    final url = await rootBundle.loadString('Assets/Apps/App.json');
    final res = await jsonDecode(url);

    setState(() {
      data = res["Apps"];
    });
  }
}
