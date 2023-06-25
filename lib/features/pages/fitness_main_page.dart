import 'package:fitness360/features/components/belt.dart';
import 'package:fitness360/features/components/header.dart';
import 'package:fitness360/features/components/hero_section.dart';
import 'package:flutter/material.dart';

class FitnessPage extends StatelessWidget {
  const FitnessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
            HeroSection(),
            Belt(),
            // WorkOutPlansSections(),
            // WhatOurAppOffers(),
            // SeeTheTransformations(),
            // GetStartedToday(),
            // Footer(),
          ],
        ),
      ),
    );
  }
}
