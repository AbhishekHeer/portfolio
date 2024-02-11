import 'dart:html' as html;

class DownloadController {
  Future<void> DownloadForwindow() async {
    const url = "Aessts/Apps/Notes Leloo.apk";
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = "Notes Leloo.apk";
    anchorElement.click();
  }

  void DownloadForMobile() {}
  void Hire() {}
  void chatApp() {}
}
