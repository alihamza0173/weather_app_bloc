import 'package:weather_app/src/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(double lat, double lng);
}
