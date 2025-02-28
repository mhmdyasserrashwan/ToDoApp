import 'package:todoapp/core/utilis/app_assets.dart';
import 'package:todoapp/core/utilis/app_strings.dart';

class OnBoardingModel {
  String image;
  String title;
  String subtitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.subtitle});
  static List<OnBoardingModel> onBoardingScreensData = [
    OnBoardingModel(
        image: AppAssets.on1,
        title: AppStringsMYR.onBoardingTitleone,
        subtitle: AppStringsMYR.onBoardingSubTitleone),
    OnBoardingModel(
        image: AppAssets.on2,
        title: AppStringsMYR.onBoardingTitletwo,
        subtitle: AppStringsMYR.onBoardingSubTitletwo),
    OnBoardingModel(
        image: AppAssets.on3,
        title: AppStringsMYR.onBoardingTitlethree,
        subtitle: AppStringsMYR.onBoardingSubTitlethree),
  ];
}
