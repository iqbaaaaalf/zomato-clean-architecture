import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Location extends Equatable {
  final int id;
  final String type;
  final String title;

  Location({@required this.id, @required this.type, @required this.title})
      : super([id, type, title]);
}
