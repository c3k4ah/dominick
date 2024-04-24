import '../models/formation_model.dart';
import 'image_assets.dart';

List<FormationModel> experienceList = [
  FormationModel(
    institut: "Freelance",
    location: 'Remote',
    title: "Développeur Flutter",
    date: "----",
    projects: [
      ProjectDescriptionModel(
        title: "Application de rencontre",
        tasks: [
          "Développement et Conception",
          "Redaction des spécifications fonctionnelles",
          "Intégration de l'API PocketBase",
          "Adoption de la methode Agile",
          "Intégration du design",
        ],
        skills: [
          "Flutter",
          "Clean Architecture",
          "PocketBase framework",
        ],
        others: "Livraison d'une MVP chaque Sprint",
      ),
      ProjectDescriptionModel(
        title: "Logiciel de bibliothèque numérique",
        isMobilePlatform: false,
        tasks: [
          "Développement de l'application pour Windows",
          "Intégration du design",
        ],
        skills: [
          "Flutter",
          "ObjectBox",
        ],
      ),
      ProjectDescriptionModel(
        title: "Application de gestion de ticket",
        tasks: [
          "Développement de l'application Android",
          "Intégration de l'API",
          "Création du Design",
        ],
        skills: [
          "Flutter",
          "Dart",
          "Git",
        ],
      ),
    ],
    urlImage: imageAsset.freelance,
  ),
  FormationModel(
    institut: "MyAgency",
    urlImage: imageAsset.myAgency,
    location: 'Anjanahary',
    title: "Développeur Flutter",
    date: "2023",
    projects: [
      ProjectDescriptionModel(
        title: "Développement d'une application de gestion de commande",
        tasks: [
          "Développement de l'application Android",
          "Intégration de l'API",
          "Mis en place d'un systeme de tracking",
        ],
        skills: [
          "Flutter",
          "Clean Architecture",
        ],
      ),
      ProjectDescriptionModel(
        title: "Application de collaboration et de gestion d'événements",
        tasks: [
          "Développement de l'application Android",
          "Intégration du design",
        ],
        skills: [
          "Flutter",
          "Clean Architecture",
          "Firebase",
        ],
      ),
    ],
  ),
  FormationModel(
    institut: "AreaTech",
    urlImage: imageAsset.areaTech,
    location: 'Avaradoha',
    title: "Développeur Flutter",
    date: "2022",
    projects: [
      ProjectDescriptionModel(
        title: "Application de reservation de voyage",
        tasks: [
          "Développement de l'application Android",
          "Mis en place du back-end ",
          "Intégration de l'API",
          "Intégration du design",
        ],
        skills: [
          "Flutter",
          "FastAPI",
        ],
      ),
    ],
  ),
  FormationModel(
    institut: "IBONIA",
    urlImage: imageAsset.inonia,
    location: 'Ankatso',
    title: "Stage de découverte",
    date: "2020",
    projects: [],
  ),
];
