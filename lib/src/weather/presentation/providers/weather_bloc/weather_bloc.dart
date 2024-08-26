import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/weather/domain/entities/weather.dart';
import 'package:weather_app/src/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_event.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        final weather = await _fetchWeather(event.latitude, event.longitude);
        emit(WeatherLoaded(weather));
      } catch (e) {
        emit(WeatherError(e.toString()));
      }
    });
  }

  Future<Weather> _fetchWeather(double lat, double lon) async {
    try {
      final response = await _weatherRepository.fetchWeather(lat, lon);

      return response;
    } catch (e) {
      throw Exception('Failed to fetch weather data');
    }
  }
}
