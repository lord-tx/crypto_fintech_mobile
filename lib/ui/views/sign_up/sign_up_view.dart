import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/app_strings.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
import 'package:opticash_mobile/ui/components/opti_button.dart';
import 'package:opticash_mobile/ui/components/text_field_widget.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_viewmodel.dart';

class SignUpView extends StackedView<SignUpViewModel> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const OptiAppBar(
        type: OptiAppBarType.internal,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(kaHomePageBackground))),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 40,
            ),
            const TextHeader(),
            const SizedBox(
              height: 40,
            ),
            const SignUpFormBody(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ksSignInClickableText,
                  style: ktSignUpSubtitleTextStyle,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: ktSignUpSubtitleTextStyle.copyWith(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            OptiButton(
              isLoading: viewModel.isBusy,
              label: ksCreateNewAccount,
              submit: () {
                viewModel.createAccount();
              },
              color: const Color(0xFF0B0B0B),
              labelColor: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ksPrivacyText,
                  style: ktSignUpSubtitleTextStyle.copyWith(height: null),
                ),
                Text(
                  " terms of use",
                  style: ktSignUpSubtitleTextStyle.copyWith(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      height: null),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "and ",
                  style: ktSignUpSubtitleTextStyle.copyWith(height: null),
                ),
                Text(
                  "Privacy Policy",
                  style: ktSignUpSubtitleTextStyle.copyWith(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      height: null),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
}

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ksSignUpTitle,
          style: ktSignUpTitleTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          ksSignUpSubtitle,
          style: ktSignUpSubtitleTextStyle,
        ),
      ],
    );
  }
}

class SignUpFormBody extends StatelessWidget {
  const SignUpFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          controller: TextEditingController(),
          textInputType: TextInputType.name,
          borderSideColor: Colors.black,
          borderRadius: 8,
          label: "Full Name",
        ),
        const SizedBox(
          height: 30,
        ),
        TextFieldWidget(
          controller: TextEditingController(),
          textInputType: TextInputType.name,
          borderSideColor: Colors.black,
          borderRadius: 8,
          label: "Email",
        ),
        const SizedBox(
          height: 30,
        ),
        TextFieldWidget(
          controller: TextEditingController(),
          textInputType: TextInputType.name,
          borderSideColor: Colors.black,
          borderRadius: 8,
          label: "Password",
          isPasswordField: true,
        ),
      ],
    );
  }
}
