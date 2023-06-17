import 'package:flutter/material.dart';
import 'package:opticash_mobile/ui/common/app_assets.dart';
import 'package:opticash_mobile/ui/common/ui_helpers.dart';
import 'package:opticash_mobile/ui/common/ui_theming.dart';
import 'package:opticash_mobile/ui/components/opti_app_bar.dart';
import 'package:stacked/stacked.dart';

import 'share_transaction_viewmodel.dart';

class ShareTransactionView extends StackedView<ShareTransactionViewModel> {
  const ShareTransactionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ShareTransactionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const OptiAppBar(
        type: OptiAppBarType.internal,
        titleText: "Transaction - Summary",
        trailing: [],
        backgroundImage: kaShareHeaderImage,
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
            )
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Container(
          height: screenHeight(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                kaReceiptFrame
              ),
              fit: BoxFit.fill
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x55C4C4C4),
                offset: Offset(0, 2),
                blurRadius: 10,
                spreadRadius: 0
              )
            ]
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(kaSuccessTick)
                ),
                const SizedBox(height: 25,),
                Text("Transaction Successful", style: ktTransactionHeaderTitleTextStyle,),
                const SizedBox(height: 5,),
                Text("Your money has been sent\n successfully!", style: ktTransactionHeaderSubtitleTextStyle, textAlign: TextAlign.center,),
                const SizedBox(height: 25,),
                Text("Total sent", style: ktTransactionHeaderSubtitleTextStyle),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(kaNigeriaFlag, scale: 4,),
                    const SizedBox(width: 10,),
                    Text("N920,000.00", style: ktTransactionAmountTitleTextStyle,),
                  ],
                ),
                const SizedBox(height: 25,),
                const Divider(),
                const SizedBox(height: 25,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Sent To", style: ktTransactionHeaderSubtitleTextStyle.copyWith(fontWeight: FontWeight.w500,),)),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    tileColor: const Color(0xFFF2F2F2),
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2F3804),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(kaTransactionAvatar),
                    ),
                    title: Text("Robert Young", style: ktHomeHeaderTitleTextStyleAlt.copyWith(fontSize: 18),),
                    subtitle: Text("24th May 2023 - 3:02 PM", style: ktHomeHeaderSubtitleTextStyle.copyWith(fontSize: 12),),
                    trailing: Image.asset(kaAcceptIcon),
                  ),
                ),
                const SizedBox(height: 40,),
                const Text("Share your transaction", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFF060606),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(kaSocialTwitter),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFF060606),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(kaSocialInstagram),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFF060606),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(kaSocialFacebook),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  ShareTransactionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShareTransactionViewModel();
}
