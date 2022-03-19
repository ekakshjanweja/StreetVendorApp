import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waffle/constants/custom_colors.dart';
import 'package:waffle/constants/text_styles.dart';
import 'package:waffle/screens/home_page.dart';
import 'package:waffle/screens/signup_page.dart';
import 'package:waffle/services/firebase_auth_services.dart';
import 'package:waffle/widgets/custom_button.dart';
import 'package:waffle/widgets/custom_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blackVariant1(),
      body: SafeArea(
        child: Stack(
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
                ),
              ),
            ),

            //Background Blob 2

            Positioned(
              top: MediaQuery.of(context).size.height * 0.6,
              left: 0,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                child: SvgPicture.asset("assets/blob_2.svg"),
              ),
            ),

            //Waffle

            Positioned(
              top: MediaQuery.of(context).size.height * 0.12,
              child: Text(
                'uscesible',
                style: TextStyleClass.logoStyle(
                  context,
                  CustomColors.primaryColor(),
                ),
              ),
            ),

            //sub heading

            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                children: [
                  Text(
                    'places that you can',
                    style: TextStyleClass.h3Bold(
                      context,
                      CustomColors.primaryColor(),
                    ),
                  ),
                  Text(
                    'access easily',
                    style: TextStyleClass.h3Bold(
                      context,
                      CustomColors.primaryColor(),
                    ),
                  ),
                ],
              ),
            ),

            //Email Input

            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01,
                        ),
                        child: CustomInput(
                          hintText: 'Email',
                          prefixIcon: const Icon(Icons.email,
                              color: Colors.white, size: 20),
                          isObscureText: false,
                          textEditingController: _emailController,
                          onSaved: (value) {
                            _emailController.text = value!;
                          },
                        ),
                      ),

                      //Password Input

                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                        ),
                        child: CustomInput(
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock,
                              color: Colors.white, size: 20),
                          isObscureText: true,
                          textEditingController: _passwordController,
                          onSaved: (value) {
                            _passwordController.text = value!;
                          },
                        ),
                      ),
                    ],
                  )),
            ),

            //Login Button

            Positioned(
              top: MediaQuery.of(context).size.height * 0.55,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('Login');
                      FirebaseAuthClass.signInWithEmailAndPassword(
                        _emailController.text,
                        _passwordController.text,
                      ).then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        ),
                      );
                    } else {
                      print('error');
                    }
                  },
                  child: CustomButton(
                    buttonText: 'Login',
                    buttonColor: CustomColors.primaryColorDark(),
                  ),
                ),
              ),
            ),

            //Or Text

            Positioned(
              top: MediaQuery.of(context).size.height * 0.67,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ),
            ),

            // Google-Facebook-Apple Login

            Positioned(
              top: MediaQuery.of(context).size.height * 0.75,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.width * 0.1,
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Google Button Pressed');
                      },
                      child: SvgPicture.asset('assets/google_logo.svg'),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Facebook Button Pressed');
                      },
                      child: SvgPicture.asset('assets/facebook_logo.svg'),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     print('Apple Button Pressed');
                    //   },
                    //   child: SvgPicture.asset('assets/apple_logo.svg'),
                    // ),
                  ],
                ),
              ),
            ),

            //Bottom Text

            Positioned(
              top: MediaQuery.of(context).size.height * 0.87,
              child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    right: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupPage(),
                        ),
                      );
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'Don\'t Have An Account? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Create One.',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
