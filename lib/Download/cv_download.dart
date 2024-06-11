import 'dart:html' as html;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadController {
  Future<void> download(url) async {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
    anchorElement.download;
  }

  Future<void> contact(context) async {
    final width = MediaQuery.of(context).size.width;

    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: Center(
            child: Text(
          'Thanks 😊',
          style: GoogleFonts.mochiyPopOne(
              color: Colors.blue,
              fontSize: width < 580 ? width * .04 : Get.width * .02),
        )),
        content: SizedBox(
          height: width < 580 ? Get.height * .3 : Get.height * .2,
          width: width < 580 ? Get.width * .8 : Get.width * .8,
          child: Center(
            child: AutoSizeText(
              "You can Contact Me On This Platforms. Drop a messege i will reply your messege as soon as well",
              style: GoogleFonts.poppins(
                  fontSize: width > 580 ? width * .02 : width * .03),
            ),
          ),
        ),
        actions: width > 580
            ? [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Cancel",
                        style:
                            GoogleFonts.mochiyPopOne(fontSize: Get.width * .01),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        const url = "mailto:xabhishekheer08@gmail.com";
                        DownloadController().repolink(url);
                      },
                      child: Text(
                        "G-Mail",
                        style: GoogleFonts.mochiyPopOne(
                            color: Colors.redAccent, fontSize: Get.width * .01),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        DownloadController()
                            .repolink('https://www.instagram.com/ashh_639');
                      },
                      child: Text(
                        "Instagram",
                        style: GoogleFonts.mochiyPopPOne(
                            color: Colors.blue, fontSize: Get.width * .01),
                      ),
                    ),
                  ],
                )
              ]
            : [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(CupertinoIcons.clear),
                    ),
                    IconButton(
                      onPressed: () {
                        const url = "mailto:xabhishekheer08@gmail.com";
                        DownloadController().repolink(url);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.googlePlusG,
                        color: Colors.redAccent,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        DownloadController()
                            .repolink('https://www.instagram.com/ashh_639');
                      },
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
      ),
    );
  }

  void repolink(String link) {
    launchUrl(Uri.parse(link));
  }
}
