class FormationModel {
  final String institut;
  final String location;
  final bool? isActive;
  final String title;
  final String date;
  final List<ProjectDescriptionModel> projects;
  final String urlImage;
  FormationModel({
    this.isActive,
    required this.institut,
    required this.location,
    required this.title,
    required this.date,
    required this.projects,
    required this.urlImage,
  });
}

class ProjectDescriptionModel {
  final String title;
  final List<String>? tasks;
  final bool? isMobilePlatform;
  final List<String>? skills;
  final String? others;

  ProjectDescriptionModel({
    required this.title,
    this.tasks,
    this.skills,
    this.others,
    this.isMobilePlatform,
  });
}
