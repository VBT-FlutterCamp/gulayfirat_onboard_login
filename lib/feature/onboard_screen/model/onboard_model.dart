class OnboardModel {
  String title;
  String description;
  String image;
  OnboardModel(
      {required this.title, required this.description, required this.image});
}

List<OnboardModel> models = [
  OnboardModel(
      title: "Symptoms of Covid-19",
      description:
          "COVID-19 affects different people in different ways. Most infected people will develop mild to moderate illness",
      image: "assets/images/symptoms.png"),
  OnboardModel(
      title: "Covid-19 Information",
      description:
          "Most people who fall sick with COVID-19 will experience mild to moderate symptoms",
      image: "assets/images/information.png"),
  OnboardModel(
      title: "Just Stay at Home",
      description:
          "Stay at home to self quarantine ourself from covid-19, hopefully everythink gonna be fine soon",
      image: "assets/images/stayathome.png")
];
