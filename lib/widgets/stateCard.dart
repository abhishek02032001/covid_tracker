import 'package:flutter/material.dart';

class StateCard extends StatelessWidget {
  final String stateName;
  final int infected;
  final int recovered;
  final int death;

  const StateCard({Key key, this.stateName, this.infected, this.recovered, this.death}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stateName,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Active: ",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(width: 16.0),
              Text(
                infected.toString(),
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(width: 50.0),
              Text(
                "Recovered: ",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 16.0),
              Text(
               recovered.toString(),
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Death: ",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red,
                ),
              ),
              SizedBox(width: 16.0),
              Text(
                death.toString(),
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
