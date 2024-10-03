class Project {
  final String? title, description, url;

  Project({
    this.title,
    this.description,
    this.url,
  });
}

List<Project> demo_projects = [
  Project(
      title: "KOS-Professionals Connect",
      description:
          "A Flutter Application which lets Professionals and Entrepreneurs connect to each other. Ability to Post,Discover,Chat,etc between people.Use of Firebase as BaaS for Login,Signup,Authentication,Store User Data, Realtime Chat etc.",
      url: "https://github.com/Yashashvi2002/KOS_App"),
  Project(
      title: "Clinify",
      description:
          "This Flutter application is developed to streamline the process of Heathcare Services. It develops a robust and user-friendly interface to address critical heathcare services like Organ Transplant, Blood Transplant,etc. ",
      url: "https://github.com/Yashashvi2002/Clinify"),
];
