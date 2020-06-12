import 'package:zomato_clean/features/location/domain/entities/location.dart';

abstract class LocationRepository {
  Future<List<Location>> getLocations(String query);
}