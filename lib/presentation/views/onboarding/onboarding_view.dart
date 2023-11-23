import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payflow/extensions/context_extension.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class OnboardingView extends ConsumerStatefulWidget {
  const OnboardingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends ConsumerState<OnboardingView> {
  int _selectedndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.getDeviceHeight,
        width: context.getDeviceWidth,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  onPageChanged: (page) {
                    setState(() {
                      _selectedndex = page;
                    });
                  },
                  itemBuilder: (context, index) => Column(
                    children: [
                      Gap.h(context.deviceHeightPercentage(percentage: 10)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 313,
                        width: context.getDeviceWidth,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      Gap.h32,
                      AppText.heading4("Take control of your finances"),
                      // Gap.h32,
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    3,
                    (index) => Expanded(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 2,
                        decoration: BoxDecoration(
                          color: _selectedndex == index
                              ? AppColors.primaryColor
                              : AppColors.greyColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Gap.h(30),
              DefaultButton(
                title: "Get Started",
                callback: () {},
              ),
              Gap.h(context.deviceHeightPercentage(percentage: 7)),
            ],
          ),
        )),
      ),
    );
  }
}
