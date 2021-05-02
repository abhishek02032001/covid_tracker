import 'package:covid_tracker/controller/countryContorller.dart';
import 'package:covid_tracker/widgets/biggerCard.dart';
import 'package:covid_tracker/widgets/stateCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCountry extends StatelessWidget {
  final CountryController statusController = Get.put(CountryController());
  final ScrollController _controllerOne = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Obx(
            () => Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BiggerCard(
                    boxColor: Colors.orange,
                    boxTitle: "Affected",
                    number: statusController.affected.value.toString(),
                  ),
                  BiggerCard(
                    boxColor: Colors.red,
                    boxTitle: "Death",
                    number: statusController.death.value.toString(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Obx(
            () => Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BiggerCard(
                    boxColor: Colors.blue,
                    boxTitle: "Active Cases",
                    number: statusController.affected.value.toString(),
                  ),
                  BiggerCard(
                    boxColor: Colors.green,
                    boxTitle: "Recovered",
                    number: statusController.death.value.toString(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Obx(
            () => ListView.builder(
              controller: _controllerOne,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: statusController.len.value,
              itemBuilder: (context, index) {
                return StateCard(
                  stateName: statusController.states[index].stateName,
                  infected: statusController.states[index].infected,
                  recovered: statusController.states[index].recovered,
                  death: statusController.states[index].death,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
