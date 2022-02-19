import 'package:flutter/material.dart';
import 'package:onboard/feature/login_screen/view/login_screen.dart';
import 'package:onboard/feature/onboard_screen/model/onboard_model.dart';
import 'package:onboard/product/companents/colors/app_colors.dart';
import 'package:onboard/product/companents/navigation_services/navigation_services.dart';
import 'package:onboard/product/companents/text/app_text.dart';
import 'package:onboard/product/companents/size/app_size.dart';
import 'package:onboard/product/widgets/elevated_button_widgets.dart';
import 'package:onboard/product/widgets/text_style_widget.dart';

import 'build_widgets/build_next_screen_button_widget.dart';
import 'build_widgets/build_onboard_texts_widget.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController? _pageController;
  int? currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: models.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(models[index].image),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildItemsPage(context),
                          BuildOnBoardTexts(index: index),
                          _buildNavigationButton(context)
                        ],
                      ),
                    ),
                  )
                ],
              );
            }));
  }

  Row _buildNavigationButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BuildNextScreenButtonWidget(),
        SizedBox(width: SizeHelper.getWidthSize(context) * 0.02),
        ElevatedButtonWidget(
          height: SizeHelper.getHeightSize(context) * 0.06,
          width: SizeHelper.getWidthSize(context) * 0.4,
          onPressed: () {
            if (currentIndex == models.length - 1) {
              nextScreen(const LoginScreen(), context);
            }
            _pageController?.nextPage(
                duration: const Duration(milliseconds: 20),
                curve: Curves.bounceIn);
          },
          onPrimaryColor: AppColors.primaryColor,
          primaryColor: AppColors.onboardButtonColor,
          child: TextStyleWidget(
            text: AppStrings.nextButtonText,
            fontSize: 16,
          ),
        )
      ],
    );
  }

  Row _buildItemsPage(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(models.length, (index) {
          return Container(
            margin: EdgeInsets.all(3),
            height: currentIndex == index ? 16 : 11,
            width: currentIndex == index ? 16 : 11,
            decoration: BoxDecoration(
                color: AppColors.backgroundligtColor,
                borderRadius: BorderRadius.circular(30)),
          );
        }));
  }
}
