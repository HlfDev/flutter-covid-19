import 'package:covid_19/app/core/core.dart';
import 'package:covid_19/app/pages/home/widgets/status/status_item_widget.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 110,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StatusContainer(
              width: 105,
              height: 110,
              color: AppColors.orange,
              count: '1046',
              title: 'infectados',
            ),
            StatusContainer(
              width: 105,
              height: 110,
              color: AppColors.pink,
              count: '87',
              title: 'mortos',
            ),
            StatusContainer(
              width: 105,
              height: 110,
              color: AppColors.blue,
              count: '1046',
              title: 'recuperados',
            ),
          ],
        ),
        Row(
          children: [
            StatusNewCases(
              width: 220,
              height: 110,
              color: AppColors.blue,
              count: '1046',
              title: 'novos casos',
              pathImage: AppImages.chart,
            ),
            StatusButtonNews(
              width: 105,
              height: 110,
              color: AppColors.blue,
              pathImage: AppImages.virusNews,
              title: 'notícias',
            )
          ],
        )
      ],
    );
  }
}
