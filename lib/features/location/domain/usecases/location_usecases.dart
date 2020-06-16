import 'package:zomato_clean/features/location/domain/entities/location_list.dart';
import 'package:zomato_clean/features/location/domain/repositories/location_repository.dart';

class LocationUsecase {
  final LocationRepository repository;

  LocationUsecase(this.repository);

  Future<LocationList> getLocations(String query) async {
    final locations = await repository.getLocations(query);
    
    return locations;
  }
}
