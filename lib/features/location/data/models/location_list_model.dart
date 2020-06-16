import 'package:flutter/material.dart';
import 'package:zomato_clean/features/location/domain/entities/location.dart';
import 'package:zomato_clean/features/location/domain/entities/location_list.dart';

class LocationListModel extends LocationList {
  LocationListModel({@required locations}) : super(locations: locations);

  factory LocationListModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> suggestedLocations =
        json['location_suggestions'];
    final List<Location> locations = [];

    suggestedLocations.forEach((element) {
      final Location location = Location(
          id: element['entity_id'],
          type: element['entity_type'],
          title: element['title']);

      locations.add(location);
    });

    return LocationListModel(locations: locations);
  }
}
