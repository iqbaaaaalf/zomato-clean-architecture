import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clean/features/location/domain/entities/location.dart';

class LocationList extends Equatable {
  final List<Location> locations;

  LocationList({@required this.locations}) : super(locations);
}