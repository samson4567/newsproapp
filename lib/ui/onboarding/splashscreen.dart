



import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsproapp/utils/dimension.dart';
import 'package:newsproapp/utils/navigator.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'splash.screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutBack,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    initialAction();
    super.initState();
  }

  Future<Timer> initialAction() async {
    return Timer(
      const Duration(seconds: 3),
      () {
        RouteNavigators.routeReplace(context, const OnboardingScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //color: AppColors.whiteColor,
      body: Center(
        child: Container(
         height: getScreenHeight(250),
                    width: getScreenWidth(250),
          color: Colors.transparent,
          child: ScaleTransition(
            scale: _animation,
            child: Image.asset(
              'assets/images/punch.webp',
              height: getScreenHeight(250),
                    width: getScreenWidth(250),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}