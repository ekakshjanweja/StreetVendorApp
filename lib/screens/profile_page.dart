import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:waffle/screens/vendor_registration_page.dart';
import 'package:waffle/widgets/custom_button.dart';

import '../constants/custom_colors.dart';
import '../constants/text_styles.dart';
import '../services/firebase_auth_services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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

          //Profile Picture

          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            child: const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://source.unsplash.com/50x50/?portrait',
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            child: Text(
              FirebaseAuthClass.user.email.toString(),
              style: TextStyleClass.h2Bold(
                context,
                Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: QrImage(
                data: "https://github.com/ekakshjanweja",
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.85,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VendorRegistrations(),
                  ),
                );
              },
              child: CustomButton(
                buttonText: 'Re-Verify',
                buttonColor: CustomColors.primaryColorDark(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
