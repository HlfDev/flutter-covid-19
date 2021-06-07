import 'package:covid_19/app/core/app_images.dart';
import 'package:flutter/material.dart';

class VacineStationButton extends StatelessWidget {
  const VacineStationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          top: 30,
          child: VacineStationContainer(),
        ),
        Positioned(
          top: -50,
          left: 0,
          child: Container(
              width: 250, height: 250, child: Image.asset(AppImages.heroes)),
        ),
      ],
    );
  }
}

class VacineStationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
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
              width: 220,
              child: Text(
                'Postos de vacinação',
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
