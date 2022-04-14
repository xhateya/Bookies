import 'package:flutter/material.dart';

class Genre{
  final String title;
  final String id;
  final Color color;

  Genre({
    required this.title,
    required this.id,
    this.color = Colors.brown
});
}
var genres =[
  Genre(
      title: 'Fantasy',
      id: 'fantasy',
      color: Color(0xffA86350)
  ),
  Genre(
      title: 'Fiction',
      id: 'fiction',
      color: Color(0xffA86350)
  ),
  Genre(
      title: 'Classic',
      id: 'classic',
      color:  Color(0xffA86350)
  ),
  Genre(
      title: 'Mystery',
      id: 'mystery',
      color:  Color(0xffA86350)
  ),
  Genre(
      title: 'Romance',
      id: 'romance',
      color:  Color(0xffA86350)
  ),
  Genre(
      title: 'Sci-fi',
      id: 'sci-fi',
      color:  Color(0xffA86350)
  ),

];