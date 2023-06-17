import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/ui_helpers.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
import 'package:opticash_mobile/ui/components/opti_button.dart';
import 'package:opticash_mobile/ui/components/text_field_widget.dart';
import 'package:stacked/stacked.dart';

import 'send_money_viewmodel.dart';

class SendMoneyView extends StackedView<SendMoneyViewModel> {
  const SendMoneyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SendMoneyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const OptiAppBar(
        type: OptiAppBarType.internal,
        titleText: "Send Money",
        trailing: [],
        backgroundImage: kaTransferHeaderImage,
        backgroundColor: Color(0xFF151900),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                kaHomePageBackground,
              ),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter
            )),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const SizedBox(height: 30,),
            Text("Available Balance", style: ktTransactionTitleStyle,),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              tileColor: const Color(0xFFFCFFF6),
              leading: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF151900),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(kaOptiCoin),
              ),
              title: Text("OPCH Balance", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
              trailing: Text(NumberFormat.currency(symbol: "\$", decimalDigits: 0).format(543998), style: ktHomeHeaderTitleTextStyleAlt.copyWith(fontSize: 16),),
            ),
            const Divider(),
            Text("Select Beneficiary", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
            const SizedBox(height: 30,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: screenWidth(context) * 0.28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Currency", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 8,),
                      TextFieldWidget(
                        controller: TextEditingController(text: "OPCH"),
                        textInputType: TextInputType.text,
                        borderRadius: 5,
                        prefixIcon: Image.asset(kaOptiCoin),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: screenWidth(context) * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("How much are you sending?", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 8,),
                      TextFieldWidget(
                        controller: TextEditingController(text: "1000.00"),
                        textInputType: TextInputType.text,
                        borderRadius: 5,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Image.asset(kaTConversionLine, fit: BoxFit.cover,),
            const SizedBox(height: 30,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: screenWidth(context) * 0.28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Receiver Gets...", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 12,),
                      TextFieldWidget(
                        controller: TextEditingController(text: "NIG"),
                        textInputType: TextInputType.text,
                        borderRadius: 5,
                        prefixIcon: Image.asset(kaNigeriaFlag, scale: 4,),
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                SizedBox(
                  width: screenWidth(context) * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(""),
                      const SizedBox(height: 12,),
                      TextFieldWidget(
                        controller: TextEditingController(text: "920,000.00"),
                        textInputType: TextInputType.text,
                        borderRadius: 5,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text("Total to Pay", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
                SizedBox(width: screenWidth(context) * 0.15,),
                Image.asset(kaOptiCoin),
                Text("10005,00", style: ktHomeHeaderSubtitleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),)
              ],
            ),
            const SizedBox(height: 60,),
            OptiButton(
              isLoading: viewModel.isBusy,
              label: "PROCEED",
              submit: () => viewModel.transfer(),
              color: Colors.black,
              labelColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  @override
  SendMoneyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SendMoneyViewModel();
}
