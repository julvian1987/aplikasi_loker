import 'package:flutter/material.dart';

class SpesifikLowongan extends StatelessWidget {
  final String pendidikan;
  final String name;
  final String name2;

  SpesifikLowongan({this.pendidikan, this.name, this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: pendidikan == null ? 80 : 100,
      width: 150,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(10)),
      child: pendidikan == null
          ? Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  pendidikan.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(name2)
              ],
            ),
    );
  }
}
