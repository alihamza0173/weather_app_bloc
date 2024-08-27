import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/src/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/src/weather/domain/entities/weather.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_bloc.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_event.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_state.dart';

class MockWeatherRepository extends Mock implements WeatherRepositoryImp {}

void main() {
  late WeatherBloc weatherBloc;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    weatherBloc = WeatherBloc(mockWeatherRepository);
  });

  blocTest<WeatherBloc, WeatherState>(
    'emits [WeatherLoading, WeatherLoaded] when weather is fetched successfully',
    build: () {
      when(() => mockWeatherRepository.fetchWeather(any(), any())).thenAnswer(
        (_) async => Weather(/* mock weather data */),
      );
      return weatherBloc;
    },
    act: (bloc) => bloc.add(FetchWeather(37.7749, -122.4194)),
    expect: () => [
      WeatherLoading(),
      WeatherLoaded(Weather(/* mock weather data */)),
    ],
  );

  blocTest<WeatherBloc, WeatherState>(
    'emits [WeatherLoading, WeatherError] when fetching weather fails',
    build: () {
      when(() => mockWeatherRepository.fetchWeather(any(), any())).thenThrow(
        Exception('Failed to fetch weather'),
      );
      return weatherBloc;
    },
    act: (bloc) => bloc.add(FetchWeather(37.7749, -122.4194)),
    expect: () => [
      WeatherLoading(),
      WeatherError('Exception: Failed to fetch weather'),
    ],
  );
}
