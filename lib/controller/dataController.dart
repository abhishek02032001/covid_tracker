import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DataController extends GetxController {
  var affected = 0.obs;
  var active = 0.obs;
  var recovered = 0.obs;
  var death = 0.obs;
  var serious = 0.obs;
  List<dynamic> states = [].obs;

  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse("https://disease.sh/v3/covid-19/all"));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      affected.value = data['updated'];
      active.value = data['active'];
      recovered.value = data['recovered'];
      death.value = data['deaths'];
      serious.value = data['critical'];
    }
  }
}
