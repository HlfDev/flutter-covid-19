import 'package:covid_19/app/pages/home/widgets/covid/covid_widget.dart';
import 'package:covid_19/app/pages/home/widgets/prevention/prevention_widget.dart';
import 'package:covid_19/app/pages/home/widgets/status/status_widget.dart';
import 'package:covid_19/app/pages/home/widgets/vacine_station/vacine_station_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F9FB),
        appBar: AppBar(
          backgroundColor: Color(0xff99ADF9),
          title: Text('COVID-19'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              width: 365,
              height: 375,
              child: Stack(
                children: [
                  StatusWidget(),
                  CovidWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Prevenções',
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Expanded(child: PreventionWidget()),
            Expanded(child: VacineStationButton()),
          ],
        ));
  }
}
