import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/serializers/serializers.dart';
import 'package:weather_app/src/weather/domain/entities/weather.dart';
import 'package:weather_app/src/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImp implements WeatherRepository {
  final dio = Dio();

  @override
  Future<Weather> fetchWeather(double lat, double lng) async {
    try {
      final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lng&appid=37ea9939152496e5de6ca532f93817fd',
      );
      final weather = serializers.deserializeWith(
        Weather.serializer,
        response.data,
      );

      return weather!;
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
      rethrow;
    }
  }
}
