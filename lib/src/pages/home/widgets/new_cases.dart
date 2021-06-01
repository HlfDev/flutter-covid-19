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
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 30,
                  color: color,
                ),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 38,
                    color: color,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/growth.png'),
                )
              ],
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
