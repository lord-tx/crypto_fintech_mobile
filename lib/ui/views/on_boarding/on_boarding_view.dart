import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_strings.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/components/opti_button.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'on_boarding_viewmodel.dart';

class OnBoardingView extends StackedView<OnBoardingViewModel> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnBoardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      persistentFooterButtons: [
        Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: OptiButton(
                  isLoading: false,
                  label: ksCreateNewAccount,
                  submit: () {
                    viewModel.navigateToCreateAccount();
                  },
                  color: kcPrimaryColor,
                  gradientColors: const [
                    Color(0xFFA3CB00),
                    Color(0xFFDDDA4C),
                  ],
                )),
            viewModel.isBusy
                ? Container(
                    padding: const EdgeInsets.all(10),
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : TextButton(
                    onPressed: () {
                      viewModel.navigateToHomeView();
                    },
                    child: Text(
                      "Sign In",
                      style: ktButtonTextStyleInv.copyWith(
                          decoration: TextDecoration.underline),
                    ),
                  )
          ],
        )
      ],
      persistentFooterAlignment: AlignmentDirectional.center,
      body: ListView(
        children: const [
          ImageSection(),
          TextSection(),
        ],
      ),
    );
  }

  @override
  OnBoardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnBoardingViewModel();
}

class ImageSection extends StatefulWidget {
  const ImageSection({super.key});

  @override
  State<ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  bool pushed = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100))
        .then((value) => pushImages());
  }

  void pushImages() {
    setState(() {
      pushed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(kaOnboardingPattern), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            bottom: 100,
            right: 100,
            child: Image.asset(kaOnboardingImage),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 0,
            left: !pushed ? 100 : 100,
            bottom: !pushed ? 100 : 300,
            right: !pushed ? 100 : 100,
            child: Image.asset(kaOnboardingImage_2),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 20,
            left: !pushed ? 100 : 100,
            bottom: !pushed ? 100 : 200,
            right: !pushed ? 100 : 250,
            child: Image.asset(kaOnboardingImage_3),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 20,
            left: !pushed ? 100 : 250,
            bottom: !pushed ? 100 : 300,
            right: !pushed ? 100 : 0,
            child: Image.asset(kaOnboardingImage_4),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 50,
            left: !pushed ? 100 : 250,
            bottom: !pushed ? 100 : 150,
            right: !pushed ? 100 : 0,
            child: Image.asset(kaOnboardingImage_5),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 100,
            left: !pushed ? 100 : 400,
            bottom: !pushed ? 100 : 100,
            right: !pushed ? 100 : 0,
            child: Image.asset(kaOnboardingImage_6),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 0,
            left: !pushed ? 100 : 0,
            bottom: !pushed ? 100 : 300,
            right: !pushed ? 100 : 300,
            child: Image.asset(kaOnboardingImage_7),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: !pushed ? 100 : 100,
            left: !pushed ? 100 : 0,
            bottom: !pushed ? 100 : 150,
            right: !pushed ? 100 : 350,
            child: Image.asset(kaOnboardingImage_8),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ksOnboardingTitle,
            style: ktOnboardingTitleTextStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            ksOnboardingSubtitle,
            style: ktOnboardingSubtitleTextStyle,
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                height: 2,
                width: 68,
                color: kcPrimaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 2,
                width: 68,
                color: const Color(0xFFA0A0A0),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 2,
                width: 68,
                color: const Color(0xFFA0A0A0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
