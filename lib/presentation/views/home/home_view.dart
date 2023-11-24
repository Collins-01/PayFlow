// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:payflow/extensions/context_extension.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  bool _isAmountVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizingConfig.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Hello",
                      style: bodyStyle1,
                      children: [
                        TextSpan(
                          text: ", Joseph Tahir!",
                          style: bodyStyle1,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.greyColor,
                  )
                ],
              ),
              Gap.h10,
              Container(
                height: 164,
                width: context.getDeviceWidth,
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.caption(
                      "Account Number",
                      color: AppColors.whiteColor,
                    ),
                    Row(
                      children: [
                        AppText.body1(
                          "1234898167",
                          color: AppColors.whiteColor,
                        ),
                        Gap.w4,
                        Icon(
                          Icons.copy_outlined,
                          size: 14,
                          color: AppColors.whiteColor,
                        )
                      ],
                    ),
                    const Spacer(),
                    AppText.caption(
                      "Account Balance",
                      color: AppColors.whiteColor,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAmountVisible = !_isAmountVisible;
                        });
                      },
                      child: SizedBox(
                        child: Row(
                          children: [
                            AppText.body1(
                              _isAmountVisible ? "N139,569.00" : "*********",
                              color: AppColors.whiteColor,
                            ),
                            Gap.w4,
                            Icon(
                              Icons.visibility_outlined,
                              size: 15,
                              color: AppColors.whiteColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.h8,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    3,
                    (index) => WalletIndicator(isActive: index == 0),
                  )
                ],
              ),
              Gap.h26,
              AppText.heading5("Shortcuts"),
              Gap.h6,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        5, (index) => ShortcutsItem(isSelected: index == 0)),
                  ],
                ),
              ),
              Gap.h20,
              AppText.heading5("Recent Clients"),
              Gap.h6,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //
                    ...List.generate(
                      5,
                      (index) => const RecentClientsItem(),
                    )
                  ],
                ),
              ),
              Gap.h20,
              AppText.heading5("Transaction History"),
              Gap.h14,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            children: [
                              //
                              Container(
                                height: 32,
                                width: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.place,
                                  size: 15,
                                ),
                              ),
                              Gap.w8,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.body1("Play Store"),
                                  Gap.h4,
                                  AppText.caption(
                                    "Payment",
                                    color: const Color(0xff9E9E9E),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Color(0xffF5F5F5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: AppText.body1("₦33,779.00"),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WalletIndicator extends StatelessWidget {
  final bool isActive;
  const WalletIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      height: 7,
      width: isActive ? 30 : 17,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : AppColors.greyColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(11),
        ),
      ),
    );
  }
}

class ShortcutsItem extends StatelessWidget {
  final bool isSelected;
  const ShortcutsItem({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : null,
        border: !isSelected ? Border.all() : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(9),
        ),
      ),
      child: Row(children: [
        Icon(
          Icons.wallet,
          color: isSelected ? AppColors.whiteColor : null,
          size: 15,
        ),
        Gap.w8,
        AppText.body1(
          "Transfer",
          color: isSelected ? AppColors.whiteColor : null,
        ),
      ]),
    );
  }
}

class RecentClientsItem extends StatelessWidget {
  const RecentClientsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greyColor,
            ),
          ),
          Gap.h6,
          AppText.body2("Paul Emmanuel")
        ],
      ),
    );
  }
}
