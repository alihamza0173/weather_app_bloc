import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final double latitude;
  final double longitude;

  FetchWeather(this.latitude, this.longitude);
}
