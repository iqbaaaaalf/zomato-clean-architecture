import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zomato_clean/features/location/domain/entities/location_list.dart';
import 'package:zomato_clean/features/location/domain/repositories/location_repository.dart';
import 'package:zomato_clean/features/location/domain/usecases/location_usecases.dart';

import '../../__mocks__/locations_mocks_json.dart';

class MockLocationRepository extends Mock implements LocationRepository {}

void main() {
  LocationUsecase usecase;
  MockLocationRepository mockLocationRepository;

  setUp(() {
    mockLocationRepository = MockLocationRepository();
    usecase = LocationUsecase(mockLocationRepository);
  });

  final String tQuery = 'jakarta';

  test('should get locations for the query from repository ', () async {
    when(mockLocationRepository.getLocations(any)).thenAnswer((_) async => mockLocations);

    final LocationList locations = await usecase.getLocations(tQuery);

    expect(locations, mockLocations);
    verify(mockLocationRepository.getLocations(tQuery));
    verifyNoMoreInteractions(mockLocationRepository);
  });
}