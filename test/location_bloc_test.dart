import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_event.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_state.dart';

class MockGeolocator extends Mock implements GeolocatorPlatform {}

void main() {
  late LocationBloc locationBloc;
  late MockGeolocator mockGeolocator;

  setUp(() {
    mockGeolocator = MockGeolocator();
    locationBloc = LocationBloc();
  });

  blocTest<LocationBloc, LocationState>(
    'emits [LocationLoading, LocationLoaded] when location is fetched successfully',
    build: () {
      when(() => mockGeolocator.getCurrentPosition()).thenAnswer(
        (_) async => Position(
          latitude: 37.7749,
          longitude: -122.4194,
          timestamp: DateTime.now(),
          accuracy: 1.0,
          altitude: 1.0,
          heading: 1.0,
          speed: 1.0,
          speedAccuracy: 1.0,
          floor: 1,
          altitudeAccuracy: 1.0,
          headingAccuracy: 1.0,
        ),
      );
      return locationBloc;
    },
    act: (bloc) => bloc.add(FetchLocation()),
    expect: () => [
      LocationLoading(),
      LocationLoaded(37.7749, -122.4194),
    ],
  );

  blocTest<LocationBloc, LocationState>(
    'emits [LocationPermissionDenied] when permission is denied',
    build: () {
      when(() => mockGeolocator.requestPermission())
          .thenAnswer((_) async => LocationPermission.denied);
      return locationBloc;
    },
    expect: () => [
      LocationPermissionDenied(),
    ],
  );
}
