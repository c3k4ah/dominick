import '../models/project_model.dart';
import 'image_assets.dart';

List<ProjectModel> projectLIst = [
  ProjectModel(
    type: 'Web (Flutter)',
    title: 'Portfolio',
    description:
        "Il s'agit d'un portfolio que j'ai avec Flutter créé pour mettre en valeur mes compétences et mon expérience.",
    urlImage: imageAsset.portfolio,
    urlProject: '',
  ),
  ProjectModel(
    type: 'Mobile (Flutter)',
    title: 'GFS',
    description:
        "GFS est une application multiplateforme qui permet de facilement la gestion d'une maison/foyer",
    urlImage: imageAsset.gfs,
    urlProject: 'https://github.com/iTeam-S/GFS',
  ),
  ProjectModel(
    type: 'Multi-platforme (Flutter)',
    title: 'Buildeo',
    description:
        'Gestion de permis de construction, du public au responsable administratif, tout en une seule plateforme et en un seul projet.',
    urlImage: imageAsset.buildeo,
    urlProject: 'https://github.com/iTeam-S/Buildeo',
  ),
  ProjectModel(
    type: 'Desktop (Flutter)',
    title: 'AVG',
    description:
        'Accès sur les Lois Environnementales: Moderne bibiotheque numerique de loi.(en tant que front-end)',
    urlImage: imageAsset.avg,
    urlProject: '',
  ),
  ProjectModel(
    type: 'Mobile (Flutter)',
    title: 'Rakitra',
    description: "Application de gestion de budget hors ligne.",
    urlImage: imageAsset.rakitra,
    urlProject: 'https://github.com/c3k4ah/RAKITRA',
  ),
  ProjectModel(
    type: 'Mobile (Flutter)',
    title: 'Mozika',
    description: 'Lecteur de musique pour Android',
    urlImage: imageAsset.mozika,
    urlProject: 'https://github.com/c3k4ah/mozika-2.0',
  ),
  ProjectModel(
    type: 'Mobile (Flutter)',
    title: 'Dekoa',
    description:
        'Une application mobile pour aider les clients à commander de la nourriture rapidement et efficacement en ligne ou directement sur place.',
    urlImage: imageAsset.dekoa,
    urlProject: '',
  ),
];
