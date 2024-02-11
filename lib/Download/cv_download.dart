import 'package:url_launcher/url_launcher.dart';

class DownloadController {
  Future<void> DownloadForwindow() async {
    const url =
        "https://drive.google.com/file/d/1euzyuxEZlpfZZ0dHN8y8UCTUpEy8eeG1/view?usp=drive_link";
    launchUrl(Uri.parse(url));
  }

  void DownloadForMobile() {}
  void Hire() {}
  void chatApp() {}
}
