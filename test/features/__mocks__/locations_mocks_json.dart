import 'package:zomato_clean/features/location/domain/entities/location.dart';
import 'package:zomato_clean/features/location/domain/entities/location_list.dart';

final _location = Location(id: 74, type: 'city', title: 'Jakarta');
final _anotherLocation = Location(id: 74009, type: 'zone', title: 'Bogor');

final LocationList mockLocations = LocationList(locations: [_location, _anotherLocation]);