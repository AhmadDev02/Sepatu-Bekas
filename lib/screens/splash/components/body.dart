import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

class BodySpalashScreen extends StatelessWidget {
  const BodySpalashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/lottie/1.json'),
        const SizedBox(
          height: 20,
        ),
        const SpinKitDoubleBounce(
          color: Colors.green,
          size: 50.0,
        ),
      ],
    );
  }
}
