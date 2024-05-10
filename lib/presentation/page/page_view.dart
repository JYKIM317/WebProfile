import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webprofile/presentation/starRates/starRates_view.dart';
import 'package:webprofile/presentation/starRates/starRatesText_view.dart';
import 'package:webprofile/presentation/copyright/copyright_view.dart';
import 'package:webprofile/presentation/intro/intro_view.dart';
import 'package:webprofile/presentation/aboutMe/aboutMe_view.dart';

class PageView extends StatelessWidget {
  const PageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          bool isMobile =
              sizingInformation.deviceScreenType == DeviceScreenType.mobile;

          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                //intro
                IntroView(isMobile: isMobile),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 40),
                ),
                //about me
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 32),
                  sliver: AboutMe(isMobile: isMobile),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 40),
                ),
                //skills
                const SliverToBoxAdapter(
                  child: SizedBox(height: 40),
                ),
                //projects
                const SliverToBoxAdapter(
                  child: SizedBox(height: 40),
                ),
                //Star rates text
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 32),
                  sliver: StarRatesText(isMobile: isMobile),
                ),
                //Star rates
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 32),
                  sliver: StarRates(isMobile: isMobile),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 40),
                ),
                const CopyrightText(),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
