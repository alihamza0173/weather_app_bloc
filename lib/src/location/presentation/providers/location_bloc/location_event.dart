import 'package:equatable/equatable.dart';

abstract class LocationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class RequestLocationPermission extends LocationEvent {}

class CheckLocationPermission extends LocationEvent {}

class FetchLocation extends LocationEvent {}
