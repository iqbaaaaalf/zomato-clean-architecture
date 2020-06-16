import 'package:zomato_clean/features/location/data/models/location_list_model.dart';
import 'package:zomato_clean/features/location/domain/entities/location.dart';
import 'package:zomato_clean/features/location/domain/entities/location_list.dart';

final _location = Location(id: 74, type: 'city', title: 'Jakarta');
final _anotherLocation = Location(id: 74002, type: 'zone', title: 'East Jakarta, Jakarta');

final List<Location> mockLocations = [_location, _anotherLocation];

final LocationList mockLocationList = LocationList(locations: mockLocations);

final LocationListModel mockLocationListModel = LocationListModel(locations: mockLocations);