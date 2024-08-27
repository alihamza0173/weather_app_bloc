import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_event.dart';
import 'package:weather_app/src/location/presentation/screens/location_screen.dart';
import 'package:weather_app/src/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/src/weather/presentation/providers/weather_bloc/weather_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LocationBloc()
              ..add(
                RequestLocationPermission(),
              ),
          ),
          BlocProvider(
            create: (context) => WeatherBloc(
              WeatherRepositoryImp(),
            ),
          ),
        ],
        child: const LocationScreen(),
      ),
    );
  }
}
