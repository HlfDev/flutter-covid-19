import 'package:covid_19/app/core/core.dart';
import 'package:flutter/material.dart';

class PreventionItem extends StatelessWidget {
  final title;
  final pathImage;

  const PreventionItem({required this.title, required this.pathImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 75.0,
            height: 75.0,
            decoration: BoxDecoration(
              color: Color(0xff99ADF9),
              shape: BoxShape.circle,
            ),
            child: Image.asset(pathImage),
          ),
          SizedBox(height: 5),
          Container(
            width: 75,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
