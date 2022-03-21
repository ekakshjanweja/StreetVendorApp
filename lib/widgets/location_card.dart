import 'package:flutter/material.dart';

import '../constants/custom_colors.dart';
import '../constants/text_styles.dart';
import 'custom_button.dart';

class LocationCard extends StatefulWidget {
  final String locationName;
  // final String locationUrl;
  LocationCard({
    required this.locationName,
    Key? key,
  }) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.4),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Image.asset('assets/maps.png'),
          ),
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              color: CustomColors.blackVariant3(),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    widget.locationName,
                    style: TextStyleClass.h2Bold(context, Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomButton(
                    buttonText: 'Google Maps',
                    buttonColor: CustomColors.primaryColorDark(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
