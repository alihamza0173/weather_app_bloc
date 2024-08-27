import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_app/serializers/serializers.dart';
import 'package:weather_app/src/weather/domain/entities/weather.dart';
import 'package:weather_app/src/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_event.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      final lastState = state;
      emit(WeatherLoading());
      try {
        final weather = await _fetchWeather(event.latitude, event.longitude);
        emit(WeatherLoaded(weather));
      } catch (e) {
        if (lastState is WeatherLoaded) {
          emit(lastState);
        } else {
          emit(WeatherError(e.toString()));
        }
      }
    });
  }

  Future<Weather> _fetchWeather(double lat, double lon) async {
    try {
      final response = await _weatherRepository.fetchWeather(lat, lon);
      return response;
    } catch (e) {
      throw 'Failed to fetch weather data';
    }
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final weather = serializers.deserializeWith<Weather>(
        Weather.serializer,
        json['weather'],
      );
      return WeatherLoaded(weather!);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoaded) {
      return {
        'weather': serializers.serializeWith(Weather.serializer, state.weather)
      };
    }
    return null;
  }
}
