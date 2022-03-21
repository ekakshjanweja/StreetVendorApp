import 'package:flutter/material.dart';
import 'package:waffle/constants/custom_colors.dart';
import 'package:waffle/constants/text_styles.dart';
import 'package:waffle/widgets/custom_button.dart';
import 'package:waffle/widgets/location_card.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.blackVariant1(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              Text(
                'Locations',
                style: TextStyleClass.h1Bold(
                  context,
                  CustomColors.primaryColor(),
                ),
              ),
              Column(
                children: [
                  LocationCard(locationName: 'Location 1'),
                  LocationCard(locationName: 'Location 2'),
                  LocationCard(locationName: 'Location 3'),
                  LocationCard(locationName: 'Location 4'),
                  LocationCard(locationName: 'Location 5'),
                  LocationCard(locationName: 'Location 6'),
                  LocationCard(locationName: 'Location 7'),
                  LocationCard(locationName: 'Location 8'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
