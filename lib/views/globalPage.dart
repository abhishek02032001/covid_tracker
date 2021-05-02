import 'package:covid_tracker/controller/dataController.dart';
import 'package:covid_tracker/widgets/biggerCard.dart';
import 'package:covid_tracker/widgets/smallerCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Global extends StatelessWidget {
  final DataController dataController = Get.put(DataController());
  
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  number: dataController.affected.value.toString(),
                ),
                BiggerCard(
                  boxColor: Colors.red,
                  boxTitle: "Death",
                  number: dataController.death.value.toString(),
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
                SmallerCard(
                  boxColor: Colors.green,
                  boxTitle: "Recovered",
                  number: dataController.recovered.value.toString(),
                ),
                SmallerCard(
                  boxColor: Colors.blue,
                  boxTitle: "Active",
                  number: dataController.active.value.toString(),
                ),
                SmallerCard(
                  boxColor: Colors.purple,
                  boxTitle: "Critical",
                  number: dataController.serious.value.toString(),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height:  300.0,
        ),
      ],
    );
  }
}
