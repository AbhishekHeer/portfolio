import 'dart:html' as html;

class DownloadController {
  Future<void> download(url) async {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  void contact() {}
}
