import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_bloc.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, weatherState) {
        if (weatherState is WeatherLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (weatherState is WeatherLoaded) {
          log(weatherState.weather.toString());
          return ListView.builder(
            itemCount: weatherState.weather.weather.length,
            itemBuilder: (context, index) {
              final weather = weatherState.weather.weather[index];
              return ListTile(
                title: Text('${weather.description}: ${weather.description}'),
                subtitle: Text('Temp: ${weather.description}°C'),
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
    );
  }
}
