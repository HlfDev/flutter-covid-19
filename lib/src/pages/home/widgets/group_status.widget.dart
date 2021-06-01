import 'package:covid_19/src/pages/home/widgets/new_cases.dart';
import 'package:covid_19/src/pages/home/widgets/news.dart';
import 'package:covid_19/src/pages/home/widgets/status_widget.dart';
import 'package:flutter/material.dart';

class GroupStatusWidget extends StatelessWidget {
  const GroupStatusWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StatusWidget(
              width: 105,
              height: 110,
              color: Color(0xffFEC272),
              count: '1046',
              title: 'infectados',
            ),
            StatusWidget(
              width: 105,
              height: 110,
              color: Color(0xffFF97C9),
              count: '87',
              title: 'mortos',
            ),
            StatusWidget(
              width: 105,
              height: 110,
              color: Color(0xff99ADF9),
              count: '1046',
              title: 'recuperados',
            ),
          ],
        ),
        Row(
          children: [
            NewCases(
              width: 220,
              height: 110,
              color: Color(0xff99ADF9),
              count: '1046',
              title: 'novos casos',
            ),
            NewsWidget(
              width: 105,
              height: 110,
              color: Color(0xff99ADF9),
              pathImage: 'assets/images/virus_news.png',
              title: 'notícias',
            )
          ],
        )
      ],
    );
  }
}
