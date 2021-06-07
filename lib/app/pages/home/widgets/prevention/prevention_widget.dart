import 'package:covid_19/app/core/core.dart';
import 'package:covid_19/app/pages/home/widgets/prevention/prevention_item_widget.dart';
import 'package:flutter/material.dart';

class PreventionWidget extends StatelessWidget {
  const PreventionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        PreventionItem(
          title: 'lave as mãos',
          pathImage: AppImages.handCleaning,
        ),
        PreventionItem(
          title: 'use máscara',
          pathImage: AppImages.faceMask,
        ),
        PreventionItem(
          title: 'mantenha distancia',
          pathImage: AppImages.socialDistancing,
        ),
        PreventionItem(
          title: 'mantenha distancia',
          pathImage: AppImages.socialDistancing,
        ),
        PreventionItem(
          title: 'mantenha distancia',
          pathImage: AppImages.socialDistancing,
        ),
        PreventionItem(
          title: 'mantenha distancia',
          pathImage: AppImages.socialDistancing,
        ),
      ],
    );
  }
}
