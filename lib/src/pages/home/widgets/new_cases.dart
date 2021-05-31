import 'package:flutter/material.dart';

class NewCases extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String title;
  final String count;

  const NewCases(
      {required this.width,
      required this.height,
      required this.color,
      required this.title,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  Icons.add,
                  size: 48,
                  color: color,
                ),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 48,
                    color: color,
                  ),
                ),
                Container(
                  height: 75,
                  width: 75,
                  child: Image.asset('assets/images/growth.png'),
                )
              ],
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
