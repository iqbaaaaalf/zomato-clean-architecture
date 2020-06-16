import 'package:zomato_clean/features/location/domain/entities/location_list.dart';

abstract class LocationRepository {
  Future<LocationList> getLocations(String query);
}