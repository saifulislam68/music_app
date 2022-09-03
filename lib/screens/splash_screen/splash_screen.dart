import 'package:dhak_dhol/screens/onboarding_screen/Onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const OnboardingScreen())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Image.asset('assets/images/app_logo.png'),
              const SizedBox(
                height: 97,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: const AssetImage('assets/images/splash.img.png'),
                        colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 255, 234, 234).withOpacity(0.3),
                          BlendMode.modulate,
                        ))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
