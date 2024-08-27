import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_state.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_bloc.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_event.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final state = context.read<LocationBloc>().state;
        if (state is LocationLoaded) {
          context.read<WeatherBloc>().add(
                FetchWeather(
                  state.latitude,
                  state.longitude,
                ),
              );
        }
      },
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, weatherState) {
          if (weatherState is WeatherLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (weatherState is WeatherLoaded) {
            return ListView.builder(
              itemCount: weatherState.weather.weather.length,
              itemBuilder: (context, index) {
                final weather = weatherState.weather.weather[index];
                return ListTile(
                  title: Text(
                    '${weather.weather.first.main}: ${weather.weather.first.description}',
                  ),
                  subtitle: Text('Temp: ${weather.main.temp}°F'),
                );
              },
            );
          } else if (weatherState is WeatherError) {
            return Center(
              child: Text(weatherState.message),
            );
          }
          return const Center(
            child: Text('Loading Weather...'),
          );
        },
      ),
    );
  }
}
