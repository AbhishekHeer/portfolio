import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LocalJSONController extends GetxController {
  RxList data = [].obs;
  Future<void> fetch() async {
    final url = await rootBundle.loadString('Assets/Apps/App.json');
    final res = await jsonDecode(url);

    data.value = res["Apps"];
  }
}
