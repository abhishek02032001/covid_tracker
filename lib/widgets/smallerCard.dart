import 'package:flutter/material.dart';

class SmallerCard extends StatelessWidget {
  final Color boxColor;
  final String boxTitle;
  final String number;

  const SmallerCard({Key key, this.boxColor, this.boxTitle, this.number})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 3,
      height: 90.0,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(9.0),
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
                fontSize: 15.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
