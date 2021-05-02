import 'package:covid_tracker/controller/countryContorller.dart';
import 'package:covid_tracker/views/globalPage.dart';
import 'package:covid_tracker/views/myCountryPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statistics extends StatelessWidget {
  final CountryController statusController = Get.put(CountryController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple[900],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Statistics",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          statusController.isGlobal.value
                              // ignore: unnecessary_statements
                              ? null
                              : statusController.checkStatus();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 8.0,
                          ),
                          width: (MediaQuery.of(context).size.width - 40) / 2,
                          decoration: BoxDecoration(
                            color: statusController.isGlobal.value
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: statusController.isGlobal.value
                                ? BorderRadius.circular(20.0)
                                : BorderRadius.circular(0.0),
                          ),
                          child: Text(
                            "Global",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: statusController.isGlobal.value
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          statusController.isGlobal.value
                              ? statusController.checkStatus()
                              // ignore: unnecessary_statements
                              : null;
                          statusController.fetchData();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 10.0,
                          ),
                          width: (MediaQuery.of(context).size.width - 40) / 2,
                          decoration: BoxDecoration(
                            color: statusController.isGlobal.value
                                ? Colors.transparent
                                : Colors.white,
                            borderRadius: statusController.isGlobal.value
                                ? BorderRadius.circular(0.0)
                                : BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "My Country",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: statusController.isGlobal.value
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => statusController.isGlobal.value ? Global() : MyCountry(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
