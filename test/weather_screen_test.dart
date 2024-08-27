import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/src/weather/domain/entities/weather.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_bloc.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_event.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_state.dart';
import 'package:weather_app/src/weather/presentation/screens/weather_screen.dart';

class MockWeatherBloc extends MockBloc<WeatherEvent, WeatherState>
    implements WeatherBloc {}

void main() {
  late MockWeatherBloc mockWeatherBloc;

  setUp(() {
    mockWeatherBloc = MockWeatherBloc();
  });

  testWidgets('Displays CircularProgressIndicator when loading',
      (tester) async {
    when(() => mockWeatherBloc.state).thenReturn(WeatherLoading());

    await tester.pumpWidget(
      BlocProvider<WeatherBloc>.value(
        value: mockWeatherBloc,
        child: const MaterialApp(home: WeatherScreen()),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Displays weather data when loaded', (tester) async {
    when(() => mockWeatherBloc.state).thenReturn(
      WeatherLoaded(Weather(/* mock weather data */)),
    );

    await tester.pumpWidget(
      BlocProvider<WeatherBloc>.value(
        value: mockWeatherBloc,
        child: const MaterialApp(home: WeatherScreen()),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.textContaining('Temp:'), findsOneWidget);
  });

  testWidgets('Displays error message when there is an error', (tester) async {
    when(() => mockWeatherBloc.state)
        .thenReturn(WeatherError('Error occurred'));

    await tester.pumpWidget(
      BlocProvider<WeatherBloc>.value(
        value: mockWeatherBloc,
        child: const MaterialApp(home: WeatherScreen()),
      ),
    );

    expect(find.text('Error occurred'), findsOneWidget);
  });
}
