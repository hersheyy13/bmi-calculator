
import 'package:bmi/home_page.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';




class MyHome extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);

  const MyHome({super.key});
 
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'CLICK',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) =>  BMICalculator(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        '',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) =>  BMICalculator(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Color.fromARGB(184, 93, 151, 113),
      pageBackgroundColor: Color.fromARGB(255, 102, 170, 110),
      background: [
        Image.asset(
          'assets/images/Onboarding1.png',
          height: 400,
        ),
        Image.asset(
                    'assets/images/Onboarding2.2.png',
          height: 400,
        ),
        Image.asset(
                   'assets/images/Onboarding3.3.png',
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'On your way...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Track your BMI history over time with our tracking feature',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(196, 8, 6, 6),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Welcome to BMI Calculator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Lets get started ! Calculate your BMI Now And begain your journey',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(160, 4, 4, 4),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Start now!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'your personal tool to monitor your Body Mass Index',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(158, 0, 0, 0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}