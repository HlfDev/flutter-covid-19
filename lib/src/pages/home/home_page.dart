import 'package:covid_19/src/pages/home/widgets/covid_widget.dart';
import 'package:covid_19/src/pages/home/widgets/group_status.widget.dart';
import 'package:covid_19/src/pages/home/widgets/prevent_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 550,
                child: Stack(
                  children: [
                    Positioned(
                      top: 200,
                      child: GroupStatusWidget(),
                    ),
                    Positioned(
                      top: -75,
                      left: -75,
                      child: CovidWidget(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Prevenções',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PrevendWidget(),
                  PrevendWidget(),
                  PrevendWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
