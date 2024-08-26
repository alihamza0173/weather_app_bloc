import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_event.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<RequestLocationPermission>(_requestLocationPermission);
    on<CheckLocationPermission>(_checkLocationPermission);
    on<FetchLocation>(_fetchLocation);
  }

  void _requestLocationPermission(
    RequestLocationPermission event,
    Emitter<LocationState> emit,
  ) async {
    final permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      emit(LocationPermissionGranted());
      add(FetchLocation());
    } else {
      emit(LocationPermissionDenied());
    }
  }

  void _checkLocationPermission(
    CheckLocationPermission event,
    Emitter<LocationState> emit,
  ) async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      emit(LocationPermissionGranted());
      add(FetchLocation());
    } else {
      emit(LocationPermissionDenied());
    }
  }

  void _fetchLocation(
    FetchLocation event,
    Emitter<LocationState> emit,
  ) async {
    emit(LocationLoading());
    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      emit(LocationLoaded(position.latitude, position.longitude));
    } catch (e) {
      emit(LocationPermissionDenied());
    }
  }
}
