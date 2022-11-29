//import equatable and material
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Pizza extends Equatable {
  final String id;
  final String name;
  final Image image;

  const Pizza({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, image];

  static List<Pizza> pizzas = [
    Pizza(
      id: '1',
      name: 'Pepperoni',
      image: Image.asset('assets/images/pepperoni.png'),
    ),
    Pizza(
      id: '2',
      name: 'Hawaiian',
      image: Image.asset('assets/images/hawaiian.png'),
    ),
    Pizza(
      id: '3',
      name: 'Meat Lovers',
      image: Image.asset('assets/images/meat_lovers.png'),
    ),
    Pizza(
      id: '4',
      name: 'Veggie',
      image: Image.asset('assets/images/veggie.png'),
    ),
    Pizza(
      id: '5',
      name: 'Supreme',
      image: Image.asset('assets/images/supreme.png'),
    ),
  ];
}
