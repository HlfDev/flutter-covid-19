import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String title;
  final String count;

  const StatusWidget(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
            ),
            Text(
              count,
              style: TextStyle(
                fontSize: 28,
                color: color,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
