import 'package:covid_19/app/core/core.dart';
import 'package:flutter/material.dart';

class CovidWidget extends StatelessWidget {
  const CovidWidget();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -35,
      top: -50,
      child: Row(
        children: [
          Container(
              width: 225,
              height: 225,
              child: Image.asset('assets/images/virus.png')),
          Icon(Icons.location_pin, color: AppColors.blue),
          SizedBox(
            width: 8.0,
          ),
          Container(
            width: 125,
            child: DropdownButton<String>(
              isExpanded: true,
              value: 'Brazil',
              elevation: 16,
              style: TextStyle(color: AppColors.grey),
              underline: Container(
                height: 2,
                color: AppColors.blue,
              ),
              onChanged: (String? newValue) {},
              items: <String>['Brazil']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
