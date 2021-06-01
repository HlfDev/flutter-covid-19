import 'package:flutter/material.dart';

class VacinadoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 340,
          height: 125,
          decoration: BoxDecoration(
            color: Color(0xff99ADF9),
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
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 190,
              child: Text(
                'Que idade está Vacinando?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ));
  }
}
