import 'package:flutter/material.dart';

class SplashViewModel {
  final TickerProvider tickerProvider;

  late AnimationController animationController;
  late Animation<double> logoAnimation;
  late Animation<double> textAnimation;

  SplashViewModel(this.tickerProvider) {
    animationController = AnimationController(
      vsync: tickerProvider,
      duration: const Duration(seconds: 2),
    );

    logoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
      ),
    );

    textAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );
  }

  void startAnimation() {
    animationController.forward();
  }

  void dispose() {
    animationController.dispose();
  }
}
