import 'package:flutter/material.dart';

class Categorycercle {
  final String name;
  final String image;

  const Categorycercle({required this.name, required this.image});
}

final List<Categorycercle> _categorycercle = [

    const Categorycercle(name: 'rejoint', image: 'assets/images/ronie.PNG'),
    const Categorycercle(name: 'Anime/Manga', image: 'assets/images/one_piece.jpg'),
    const Categorycercle(name: 'Music', image: ''),
    const Categorycercle(name: 'Cinema', image: ''),
    const Categorycercle(name: 'Sport', image: ''),
    const Categorycercle(name: 'Danse', image: ''),
    const Categorycercle(name: 'Theatre', image: ''),
    const Categorycercle(name: 'otaku', image: ''),
    const Categorycercle(name: 'technology', image: ''),
];