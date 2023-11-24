import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_saya/screens/navbutton/nav_screen.dart';
import 'package:flutter_project_saya/screens/splash/components/body.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  static String routeName = '/onboarding';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value) => {
          Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: (ctx) => const NavScreen()))
        });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySpalashScreen(),
    );
  }
}
