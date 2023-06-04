// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemPortfolioModel {
  final String titre;
  final String description;
  final String route;
  final String urlImg;
  final Widget child;

  ItemPortfolioModel({
    required this.titre,
    required this.description,
    required this.route,
    required this.urlImg,
    required this.child,
  });
}
