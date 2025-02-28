import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todoapp/core/utilis/app_assets.dart';
import 'package:todoapp/core/utilis/app_colors.dart';
import 'package:todoapp/core/utilis/app_strings.dart';
import 'package:todoapp/features/addtask/presentation/homescreen/homescreen.dart';
import 'package:todoapp/features/auth/data/onboardingmodel.dart';

class OnboardingScreens extends StatelessWidget {
  OnboardingScreens({super.key});
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorsMYR.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TEXT BUTTON
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        index != 2
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  child: Text(
                                    AppStringsMYR.skip,
                                    style: GoogleFonts.lato(
                                      color: AppColorsMYR.whiteColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  onPressed: () {
                                    controller.jumpToPage(2);
                                  },
                                ),
                              )
                            : SizedBox(
                                height: 50,
                              ),

                        SizedBox(
                          height: 52,
                        ),
                        Image.asset(
                            OnBoardingModel.onBoardingScreensData[index].image),
                        //DOTS
                        SizedBox(
                          height: 15,
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: OnBoardingModel.onBoardingScreensData.length,
                          effect: ExpandingDotsEffect(
                            activeDotColor: AppColorsMYR.primaryColor,
                            dotColor: AppColorsMYR.whiteColor,
                            dotHeight: 4,
                            dotWidth: 12,
                            spacing: 8,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //Title
                        Text(
                          OnBoardingModel.onBoardingScreensData[index].title,
                          style: GoogleFonts.lato(
                            color: AppColorsMYR.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        //subtitle
                        Text(
                          OnBoardingModel.onBoardingScreensData[index].subtitle,
                          style: GoogleFonts.lato(
                            color: AppColorsMYR.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),

                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            index != 0
                                ? TextButton(
                                    child: Text(
                                      AppStringsMYR.back,
                                      style: GoogleFonts.lato(
                                        color: AppColorsMYR.whiteColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                    onPressed: () {
                                      controller.previousPage(
                                          duration:
                                              Duration(milliseconds: 1000),
                                          curve: Curves.fastLinearToSlowEaseIn);
                                    },
                                  )
                                : Container(),
                            Spacer(),
                            //Next Button
                            index != 2
                                ? ElevatedButton(
                                    onPressed: () {
                                      controller.nextPage(
                                          duration:
                                              Duration(milliseconds: 1000),
                                          curve: Curves.fastLinearToSlowEaseIn);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          AppColorsMYR.primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Text(
                                      AppStringsMYR.next,
                                      style: GoogleFonts.lato(
                                        color: AppColorsMYR.whiteColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                : ElevatedButton(
                                    onPressed: () {
                                      //Navigation to another
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => Homescreen(),
                                      ));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          AppColorsMYR.primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    child: Text(
                                      AppStringsMYR.getStarted,
                                      style: GoogleFonts.lato(
                                        color: AppColorsMYR.whiteColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                          ],
                        )
                      ],
                    );
                  },
                  controller: controller,
                  itemCount: 3,
                ),
              ),

              //BUTOONS
            ],
          ),
        ),
      ),
    );
  }
}
