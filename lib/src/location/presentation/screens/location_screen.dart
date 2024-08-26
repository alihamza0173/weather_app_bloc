import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_state.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_bloc.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_event.dart';
import 'package:weather_app/src/weather/presentation/screens/weather_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather App')),
      body: BlocBuilder<LocationBloc, LocationState>(
        builder: (context, locationState) {
          if (locationState is LocationLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (locationState is LocationLoaded) {
            context.read<WeatherBloc>().add(
                  FetchWeather(
                    locationState.latitude,
                    locationState.latitude,
                  ),
                );
            return const WeatherScreen();
          } else if (locationState is LocationPermissionDenied) {
            return const Center(child: Text('Permission Denied'));
          } else {
            return const Center(child: Text('Requesting Permission...'));
          }
        },
      ),
    );
  }
}
