import 'dart:convert';

import 'package:covid_tracker/models/stateData.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CountryController extends GetxController {
  var isGlobal = true.obs;

  var affected = 0.obs;
  var active = 0.obs;
  var recovered = 0.obs;
  var death = 0.obs;
  List<dynamic> states = [].obs;
  var len = 0.obs;

  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "https://api.apify.com/v2/key-value-stores/toDWvRj1JpTXiM8FF/records/LATEST?disableRedirect=true"));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      affected.value = data['totalCases'];
      active.value = data['activeCases'];
      recovered.value = data['recovered'];
      death.value = data['deaths'];

      List<dynamic> state = data['regionData'];
      states = state.map((d) => StateData.fromJson(d)).toList();
      len.value = states.length;
    }
  }

  void checkStatus() {
    if (isGlobal.value)
      isGlobal.value = false;
    else
      isGlobal.value = true;
  }
}
