import 'package:covid_tracker/controller/dataController.dart';
import 'package:covid_tracker/controller/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationBar extends StatelessWidget {
  final NavController navigation = Get.put(NavController());
  final DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          elevation: 0.0,
          leading: Icon(
            Icons.menu,
            size: 32.0,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: navigation.widgetOptions[navigation.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_align_justify),
              label: "Statistics",
            ),
          ],
          currentIndex: navigation.currentIndex.value,
          onTap: (index) async {
            if(index == 1){
              navigation.setIndex(index);
              await dataController.fetchData();
            }
            else{
              navigation.setIndex(index);
            }
          },
        ),
      ),
    );
  }
}
