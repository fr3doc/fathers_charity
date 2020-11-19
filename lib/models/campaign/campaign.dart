import 'package:flutter/material.dart';

class Campaign {
  final int id;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Campaign({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

List<Campaign> demoCampaigns = [
  Campaign(
    id: 1,
    images: ["assets/images/charity.png"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kanda Underbridge",
    price: "5,000 Raised",
    description:
        "Kanda underbridge project feeding of the street children twice a week",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Campaign(
    id: 2,
    images: ["assets/images/charity2.png"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Leprosarium",
    price: "10,000 Raised",
    description:
        "Kanda underbridge project feeding of the street children twice a week",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Campaign(
    id: 3,
    images: ["assets/images/charity3.png"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Kordiabe Project",
    price: "40,000 Raised",
    description:
        "Kanda underbridge project feeding of the street children twice a week",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Campaign(
    id: 4,
    images: ["assets/images/charity4.png"],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Soup Kitchen",
    price: "2,000 Raised",
    description:
        "Kanda underbridge project feeding of the street children twice a week",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
