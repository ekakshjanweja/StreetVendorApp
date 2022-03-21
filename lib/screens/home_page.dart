import 'package:flutter/material.dart';
import 'package:waffle/constants/custom_colors.dart';
import 'package:waffle/constants/text_styles.dart';
import 'package:waffle/screens/locations_page.dart';
import 'package:waffle/screens/login_page.dart';
import 'package:waffle/screens/profile_page.dart';
import 'package:waffle/screens/vendor_registration_page.dart';

import 'package:waffle/services/firebase_auth_services.dart';
import 'package:waffle/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.blackVariant1(),
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'the',
                    style: TextStyleClass.h1Bold(
                      context,
                      CustomColors.primaryColor(),
                    ),
                  ),
                  Text(
                    'बोनी',
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
              const SizedBox(
                height: 80,
              ),
              Text(
                'Welcome, ' + FirebaseAuthClass.user.email.toString(),
                style: TextStyleClass.h1Bold(context, Colors.white),
              ),

              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  FirebaseAuthClass.signOut().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    ),
                  );
                },
                child: CustomButton(
                  buttonText: 'Sign Out',
                  buttonColor: CustomColors.primaryColorDark(),
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const VendorRegistrations(),
              //       ),
              //     );
              //   },
              //   child: CustomButton(
              //     buttonText: 'Verification',
              //     buttonColor: CustomColors.primaryColorDark(),
              //   ),
              // ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LocationsPage(),
                    ),
                  );
                },
                child: CustomButton(
                  buttonText: 'Locations',
                  buttonColor: CustomColors.primaryColorDark(),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: CustomButton(
                  buttonText: 'Profile',
                  buttonColor: CustomColors.primaryColorDark(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
