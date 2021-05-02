import 'package:flutter/material.dart';

class BiggerCard extends StatelessWidget {
  final Color boxColor;
  final String boxTitle;
  final String number;

  const BiggerCard({Key key, this.boxColor, this.boxTitle, this.number})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 50) / 2,
      height: 130.0,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              boxTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}