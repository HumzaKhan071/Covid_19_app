import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
              child: Row(
            children: [
              _buildStatsCard("Recovered", "391 K", Colors.green),
              _buildStatsCard("Active", "1.31 M", Colors.lightBlue),
              _buildStatsCard("Active", "N/A", Colors.purple),
            ],
          )),
          Flexible(
              child: Row(
            children: [
              _buildStatsCard("Total Cases", "1.81M", Colors.orange),
              _buildStatsCard("Deaths", "105 K", Colors.red),
            ],
          ))
        ],
      ),
    );
  }

  Expanded _buildStatsCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              count,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
