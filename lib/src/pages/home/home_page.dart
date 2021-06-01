import 'package:covid_19/src/pages/home/widgets/covid_widget.dart';
import 'package:covid_19/src/pages/home/widgets/group_status.widget.dart';

import 'package:flutter/material.dart';

import 'widgets/prevent_widget.dart';
import 'widgets/quando_vou_ser_vacinado.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  GroupStatusWidget(),
                  CovidWidget(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Prevenções',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PrevendWidget(
                    title: 'lave as mãos',
                    pathImage: 'assets/images/hand_cleaning.png',
                  ),
                  PrevendWidget(
                    title: 'use máscara',
                    pathImage: 'assets/images/face_mask.png',
                  ),
                  PrevendWidget(
                    title: 'mantenha distancia',
                    pathImage: 'assets/images/social_distancing.png',
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: 30,
                      child: VacinadoWidget(),
                    ),
                    Positioned(
                      top: -50,
                      left: -15,
                      child: Container(
                          width: 250,
                          height: 250,
                          child: Image.asset('assets/images/heroes.png')),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
