import 'package:equatable/equatable.dart';

abstract class LocationState extends Equatable {
  @override
  List<Object> get props => [];
}

class LocationInitial extends LocationState {}

class LocationPermissionGranted extends LocationState {}

class LocationPermissionDenied extends LocationState {}

class LocationLoading extends LocationState {}

class LocationLoaded extends LocationState {
  final double latitude;
  final double longitude;

  LocationLoaded(this.latitude, this.longitude);

  @override
  List<Object> get props => [latitude, longitude];
}
