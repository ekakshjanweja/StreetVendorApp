import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waffle/constants/custom_colors.dart';
import 'package:waffle/widgets/custom_button.dart';

import '../constants/text_styles.dart';

class VendorLocality extends StatelessWidget {
  const VendorLocality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackVariant1(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          //Background Blob 1

          Positioned(
            top: -60,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: SvgPicture.asset(
                "assets/blob_1.svg",
                width: 150,
              ),
            ),
          ),

          //Background Blob 2

          Positioned(
            top: MediaQuery.of(context).size.height * 0.8,
            left: 0,
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: SvgPicture.asset(
                "assets/blob_2.svg",
                width: 180,
              ),
            ),
          ),

          //Waffle

          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: Text(
              'thelaside',
              style: TextStyleClass.logoStyle(
                context,
                CustomColors.primaryColor(),
              ).copyWith(fontSize: 20),
            ),
          ),

          //sub heading

          Positioned(
            top: MediaQuery.of(context).size.height * 0.16,
            child: Column(
              children: [
                Text(
                  'Vendor Locality',
                  style: TextStyleClass.h3Bold(
                    context,
                    CustomColors.primaryColor(),
                  ).copyWith(fontSize: 32),
                ),
                Text(
                  'Select to location and timings',
                  style: TextStyleClass.h3Bold(
                    context,
                    CustomColors.primaryColor(),
                  ).copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            child: DropdownButton<String>(
              dropdownColor: CustomColors.blackVariant3(),
              items: <String>[
                'West Delhi',
                'East Delhi',
                'South Delhi',
                'North Delhi'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyleClass.bodyText(context, Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 90,
            child: CustomButton(
              buttonText: 'Sign Out',
              buttonColor: CustomColors.primaryColorDark(),
            ),
          ),
        ],
      ),
    );
  }
}