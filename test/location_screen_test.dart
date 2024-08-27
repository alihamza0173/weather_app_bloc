import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_bloc.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_event.dart';
import 'package:weather_app/src/location/presentation/providers/location_bloc/location_state.dart';
import 'package:weather_app/src/location/presentation/screens/location_screen.dart';
import 'package:weather_app/src/weather/presentation/screens/weather_screen.dart';

class MockLocationBloc extends MockBloc<LocationEvent, LocationState>
    implements LocationBloc {}

void main() {
  late MockLocationBloc mockLocationBloc;

  setUp(() {
    mockLocationBloc = MockLocationBloc();
  });

  testWidgets('Displays CircularProgressIndicator when loading',
      (tester) async {
    when(() => mockLocationBloc.state).thenReturn(LocationLoading());

    await tester.pumpWidget(
      BlocProvider<LocationBloc>.value(
        value: mockLocationBloc,
        child: const MaterialApp(home: LocationScreen()),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('Displays "Permission Denied" when permission is denied',
      (tester) async {
    when(() => mockLocationBloc.state).thenReturn(LocationPermissionDenied());

    await tester.pumpWidget(
      BlocProvider<LocationBloc>.value(
        value: mockLocationBloc,
        child: const MaterialApp(home: LocationScreen()),
      ),
    );

    expect(find.text('Permission Denied'), findsOneWidget);
  });

  testWidgets('Navigates to WeatherScreen when location is loaded',
      (tester) async {
    when(() => mockLocationBloc.state)
        .thenReturn(LocationLoaded(37.7749, -122.4194));

    await tester.pumpWidget(
      BlocProvider<LocationBloc>.value(
        value: mockLocationBloc,
        child: const MaterialApp(home: LocationScreen()),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(WeatherScreen), findsOneWidget);
  });
}
