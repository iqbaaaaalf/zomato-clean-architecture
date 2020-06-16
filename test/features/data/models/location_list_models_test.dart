import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zomato_clean/features/location/data/models/location_list_model.dart';
import 'package:zomato_clean/features/location/domain/entities/location.dart';
import 'package:zomato_clean/features/location/domain/entities/location_list.dart';

import '../../../fixtures/fixture_reader.dart';
import '../../__mocks__/locations_mocks_json.dart';

void main() {
  group('location model', () {
    test('should be instance of location list entity', () {
      final tLocation = Location(id: 1, type: 'city', title: 'Jakarta');
      final tLocationModel = LocationList(locations: [tLocation]);

      expect(tLocationModel, isA<LocationList>());
    });

    group('#fromJson', () {
      test('should return list of location from json object', () {
        final LocationListModel expectedLocationListModel = mockLocationListModel;
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('location_list_response.json'));

        final result = LocationListModel.fromJson(jsonMap);

        expect(result, expectedLocationListModel);
      });
    });
  });
}
