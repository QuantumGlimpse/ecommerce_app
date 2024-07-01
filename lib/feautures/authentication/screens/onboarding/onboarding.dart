import 'package:ecommerce_app/feautures/authentication/controllers/onboarding_controllers.dart';
import 'package:ecommerce_app/feautures/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:ecommerce_app/feautures/authentication/screens/onboarding/widgets/onboardingpages.dart';
import 'package:ecommerce_app/feautures/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/feautures/authentication/screens/onboarding/widgets/smoothnavigator.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControllers());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip button
          const OnBoardingSkip(),

          /// Dot Navigation smooth PageIndicator
          const SmoothNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
