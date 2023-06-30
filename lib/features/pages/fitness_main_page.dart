import 'package:fitness360/features/components/belt.dart';
import 'package:fitness360/features/components/footer.dart';
import 'package:fitness360/features/components/get_started_today.dart';
import 'package:fitness360/features/components/header.dart';
import 'package:fitness360/features/components/hero_section.dart';
import 'package:fitness360/features/components/see_the_transformations.dart';
import 'package:fitness360/features/components/what_our_app_offers_section.dart';
import 'package:fitness360/features/components/workout_plans_section.dart';
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
            WorkOutPlansSections(),
            WhatOurAppOffers(),
            SeeTheTransformations(),
            GetStartedToday(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
