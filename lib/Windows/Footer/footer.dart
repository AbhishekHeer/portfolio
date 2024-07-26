import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Footor extends StatefulWidget {
  const Footor({super.key});

  @override
  State<Footor> createState() => _FootorState();
}

class _FootorState extends State<Footor> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: Get.height * .05),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  const url = "https://github.com/AbhishekHeer/";
                  launchUrl(Uri.parse(url));
                },
                child: const Icon(FontAwesomeIcons.github)),
            SizedBox(width: Get.width * .04, height: 0.0),
            InkWell(
                onTap: () {
                  const url = "https://www.instagram.com/ashh_639/";
                  launchUrl(Uri.parse(url));
                },
                child: const Icon(FontAwesomeIcons.instagram)),
            SizedBox(width: Get.width * .04, height: 0.0),
            InkWell(
                onTap: () {
                  const url =
                      "https://www.linkedin.com/in/abhishek-heer-6a1736252?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app";
                  launchUrl(Uri.parse(url));
                },
                child: const Icon(FontAwesomeIcons.linkedinIn)),
            SizedBox(width: Get.width * .04, height: 0.0),
            InkWell(
                onTap: () {
                  const message = "Hi, I am Abhishek. How Can I Help You ?";
                  const mobileNumber = "+917888943030";
                  var url = "whatsapp://send?phone=$mobileNumber&text=$message";
                  launchUrl(Uri.parse(url));
                },
                child: const Icon(FontAwesomeIcons.whatsapp)),
            SizedBox(width: Get.width * .04, height: 0.0),
          ],
        ),
        SizedBox(height: Get.height * .05),
      ],
    );
  }
}
