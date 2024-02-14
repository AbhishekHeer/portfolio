import 'dart:html' as html;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadController {
  Future<void> download(url) async {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  Future<void> contact(context) async {
    final width = MediaQuery.of(context).size.width;

    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: const Text('Thanks 😊'),
        content: SizedBox(
          height: Get.height * .3,
          width: Get.width * .8,
          child: const Center(
            child: AutoSizeText("You can Contact Me On This Platforms "),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              width > 580
                  ? InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const AutoSizeText('cancel'))
                  : InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        CupertinoIcons.clear,
                      ),
                    ),
              width > 580
                  ? InkWell(
                      onTap: () {
                        DownloadController()
                            .repolink("https://www.instagram.com/ashh_639");
                      },
                      child: const AutoSizeText('Instagram'))
                  : InkWell(
                      onTap: () {
                        DownloadController()
                            .repolink("https://www.instagram.com/ashh_639");
                      },
                      child: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.blue,
                      ),
                    ),
              width > 580
                  ? InkWell(
                      onTap: () {
                        const url = 'mailto:xabhishekheer08@gmail.com';

                        DownloadController().repolink(url);
                      },
                      child: const AutoSizeText('Gmail'))
                  : InkWell(
                      onTap: () {
                        const url = 'mailto:xabhishekheer08@gmail.com';

                        DownloadController().repolink(url);
                      },
                      child: const Icon(
                        FontAwesomeIcons.g,
                        color: Colors.red,
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
