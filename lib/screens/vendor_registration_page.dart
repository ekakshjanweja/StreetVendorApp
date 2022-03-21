import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waffle/screens/vendor_locality.dart';
import 'package:waffle/widgets/custom_button.dart';
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
  final _formKey = GlobalKey<FormState>();
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

            // Positioned(
            //   top: MediaQuery.of(context).size.height * 0.04,
            //   child: Row(
            //     children: [
            //       Text(
            //         'the',
            //         style: TextStyleClass.h1Bold(
            //           context,
            //           CustomColors.primaryColor(),
            //         ),
            //       ),
            //       Text(
            //         'बोनी',
            //         style: TextStyleClass.logoStyle(
            //           context,
            //           CustomColors.primaryColor(),
            //         ),
            //       ),
            //       Text(
            //         'app',
            //         style: TextStyleClass.h1Bold(
            //           context,
            //           CustomColors.primaryColor(),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            //sub heading

            Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
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
              top: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Vendor License Number',
                      style: TextStyleClass.h3Bold(
                        context,
                        CustomColors.primaryColor(),
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: CustomInput(
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
                  ),
                ],
              ),
            ),

            //Vendor Locality

            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Upload A Picture',
                      style: TextStyleClass.h3Bold(
                        context,
                        CustomColors.primaryColor(),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: CustomColors.blackVariant3(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Type of Seller',
                        style: TextStyleClass.bodyText(context, Colors.white),
                      ),
                      DropdownButton<String>(
                        dropdownColor: CustomColors.blackVariant3(),
                        items: <String>[
                          'Hawker',
                          'Street Vendor',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyleClass.bodyText(
                                  context, Colors.white),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        'Does the vendor \nown a mobile cart?',
                        style: TextStyleClass.bodyText(context, Colors.white),
                      ),
                      DropdownButton<String>(
                        dropdownColor: CustomColors.blackVariant3(),
                        items: <String>[
                          'Yes',
                          'No',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyleClass.bodyText(
                                  context, Colors.white),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.83,
              child: GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VendorLocality(),
                      ),
                    );
                  }
                },
                child: CustomButton(
                  buttonText: 'Submit',
                  buttonColor: CustomColors.primaryColorDark(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
