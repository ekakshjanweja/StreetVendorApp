import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waffle/constants/custom_colors.dart';
import 'package:waffle/screens/home_page.dart';
import 'package:waffle/widgets/custom_button.dart';

import '../constants/text_styles.dart';

class VendorLocality extends StatefulWidget {
  const VendorLocality({Key? key}) : super(key: key);

  @override
  State<VendorLocality> createState() => _VendorLocalityState();
}

class _VendorLocalityState extends State<VendorLocality> {
  String region = 'Select region';
  String gender = 'Select gender';
  String category = 'Select category';
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
            child: Row(
              children: [
                Text(
                  'the',
                  style: TextStyleClass.h1Bold(
                    context,
                    CustomColors.primaryColor(),
                  ),
                ),
                Text(
                  '????????????',
                  style: TextStyleClass.logoStyle(
                    context,
                    CustomColors.primaryColor(),
                  ),
                ),
                Text(
                  'app',
                  style: TextStyleClass.h1Bold(
                    context,
                    CustomColors.primaryColor(),
                  ),
                ),
              ],
            ),
          ),

          //sub heading

          Positioned(
            top: MediaQuery.of(context).size.height * 0.16,
            child: Column(
              children: [
                Text(
                  'Other Required Details',
                  style: TextStyleClass.h3Bold(
                    context,
                    CustomColors.primaryColor(),
                  ).copyWith(fontSize: 32),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Select your region',
                  style: TextStyleClass.h3Bold(
                    context,
                    CustomColors.primaryColor(),
                  ).copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            child: DropdownButton<String>(
              hint: Text(
                region,
                style: TextStyleClass.bodyText(context, Colors.white),
              ),
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
              onChanged: (item) => setState(() {
                region = item!;
              }),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            child: Column(children: [
              Text(
                'Select your gender',
                style: TextStyleClass.h3Bold(
                  context,
                  CustomColors.primaryColor(),
                ).copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              )
            ]),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.53,
            child: DropdownButton<String>(
              hint: Text(
                gender,
                style: TextStyleClass.bodyText(context, Colors.white),
              ),
              dropdownColor: CustomColors.blackVariant3(),
              items: <String>['Male', 'Female', 'Rather Not Say']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyleClass.bodyText(context, Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (item) => setState(() {
                gender = item!;
              }),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.65,
            child: Column(children: [
              Text(
                'Select your Category',
                style: TextStyleClass.h3Bold(
                  context,
                  CustomColors.primaryColor(),
                ).copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              )
            ]),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.73,
            child: DropdownButton<String>(
              hint: Text(
                category,
                style: TextStyleClass.bodyText(context, Colors.white),
              ),
              dropdownColor: CustomColors.blackVariant3(),
              items: <String>[
                'Fruits',
                'Vegetables',
                'Street Food',
                'Miscellaneous items',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyleClass.bodyText(context, Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (item) => setState(() {
                category = item!;
              }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.85,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: CustomButton(
                buttonText: 'Confirm',
                buttonColor: CustomColors.primaryColorDark(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
