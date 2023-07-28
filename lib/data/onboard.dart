class OnboardModel {
  final String image;
  final String title;
  final String subTitle;

  OnboardModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardModel> onboardData = [
  OnboardModel(
    image: "assets/images/onboard/onboard-1.png",
    title: "Easy to Use",
    subTitle: "Use carbo anytime anywhere",
  ),
  OnboardModel(
    image: "assets/images/onboard/onboard-2.png",
    title: "Easy Hire",
    subTitle: "Make easy hire for your travels",
  ),
  OnboardModel(
    image: "assets/images/onboard/onboard-3.png",
    title: "Easy Navigator",
    subTitle: "Use Easy Navigator to get to your destination faster",
  ),
  OnboardModel(
    image: "assets/images/onboard/onboard-4.png",
    title: "Easy Payment",
    subTitle: "Easy pay without any extra charges",
  ),
];
