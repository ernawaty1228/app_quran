import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SurahController extends GetxController {
  dynamic data;
  bool isLoading = false;

  @override
  void onInit() {
    readList();
    super.onInit();
  }

  void readList() async {
    isLoading = true;
    update();

    data = await Dio().get("https://equran.id/api/v2/surat").then((value) => value.data['data']);
    log("${data}");
    isLoading = false;
    update();
  }
}