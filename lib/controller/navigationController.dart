import 'package:covid_tracker/views/statisticsPage.dart';
import 'package:flutter/material.dart';
import 'package:covid_tracker/views/homePage.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 0.obs;
  var isGlobal = true.obs;

  List<Widget> widgetOptions = [
    HomePage(),
    Statistics(),
  ].obs;

  void setIndex(int index) {
    currentIndex.value = index;
  }

  void checkStatus() {
    if (isGlobal.value)
      isGlobal.value = false;
    else
      isGlobal.value = true;
  }

}
