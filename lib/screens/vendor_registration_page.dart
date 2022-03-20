import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waffle/widgets/custom_input.dart';
import '../constants/custom_colors.dart';
import '../constants/text_styles.dart';

class VendorRegistrations extends StatefulWidget {
  const VendorRegistrations({Key? key}) : super(key: key);

  @override
  State<VendorRegistrations> createState() => _VendorRegistrationsState();
}

class _VendorRegistrationsState extends State<VendorRegistrations> {
  final TextEditingController _vendorLicenseNumberController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              top: MediaQuery.of(context).size.height * 0.06,
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
              top: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                children: [
                  Text(
                    'Vendor Registration',
                    style: TextStyleClass.h3Bold(
                      context,
                      CustomColors.primaryColor(),
                    ).copyWith(fontSize: 32),
                  ),
                  Text(
                    'Complete The Registration Process To Get Going',
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

            //Vendor License Number

            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Vendor License Number',
                      style: TextStyleClass.h3Bold(
                        context,
                        CustomColors.primaryColorDark(),
                      ),
                    ),
                  ),
                  CustomInput(
                    hintText: 'Vendor License Number',
                    prefixIcon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    isObscureText: false,
                    textEditingController: _vendorLicenseNumberController,
                    onSaved: (value) {
                      _vendorLicenseNumberController.text = value!;
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
