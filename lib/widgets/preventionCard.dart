import 'package:flutter/material.dart';

class PreventionCard extends StatelessWidget {
  final String url;
  final String title;

  const PreventionCard({Key key, this.url, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: 120.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            url,
            width: 100.0,
            height: 100.0,
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
