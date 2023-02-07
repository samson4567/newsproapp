import 'package:flutter/material.dart';
import 'package:newsproapp/model/samplemodel.dart';
import 'package:newsproapp/utils/dimension.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 300,
      child: PageView(scrollDirection: Axis.horizontal, children: const [
        SampleModel(),
        SampleModel(),
        SampleModel(),
      ]),
    ));
  }
}
