import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation/core/utils/colors.dart';
import 'package:graduation/features/home/presentation/pages/home_page.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  get kDefaultPadding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
              ),
              Text(
                'Welcome Back',
                style: GoogleFonts.anton(),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'New to this app?',
                    style: GoogleFonts.anton(),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.anton(color: ColorManager.primaryColor),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const LogInForm(),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Forgot password?',
                style: GoogleFonts.abel(
                  color: const Color(
                    0xFF5B5B5B,
                  ),
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const PrimaryButton(
                buttonText: 'Log In',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Log In with:',
                style: GoogleFonts.abel(
                  color: const Color(
                    0xFF5B5B5B,
                  ),
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  decorationThickness: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/svgs/google.svg",
                          height: 30,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/svgs/facebook.svg",
                          height: 31,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  get Pass => true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInPutForm('Email', false),
        buildInPutForm('Password', true)
      ],
    );
  }

  Padding buildInPutForm(String label, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: label,
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF1B383A)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF1B383A)),
            ),
            labelStyle: const TextStyle(color: Color(0xff979797)),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF1B383A)),
            ),
            suffixIcon: Pass
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Color(0xFF1B383A),
                    ),
                  )
                : null),
      ),
    );
  }
}

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildButton(
          iconImage: Image(
              height: 20, width: 20, image: AssetImage('images/facebook.png')),
          TextButton: 'Facebook',
        ),
        BuildButton(
          iconImage: Image(
              height: 20, width: 20, image: AssetImage('images/facebook.png')),
          TextButton: 'Google',
        )
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String TextButton;
  const BuildButton(
      {super.key, required this.iconImage, required this.TextButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconImage,
          const SizedBox(
            width: 5,
          ),
          Text(TextButton)
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  const PrimaryButton({super.key, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()));
      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ColorManager.primaryColor,
        ),
        child: Text(
          buttonText,
          selectionColor: const Color(0xFFFFFFFF),
          style: GoogleFonts.anton(color: Colors.white),
        ),
      ),
    );
  }
}
