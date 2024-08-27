// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Clouds.serializer)
      ..add(Main.serializer)
      ..add(Sys.serializer)
      ..add(Weather.serializer)
      ..add(WeatherDescription.serializer)
      ..add(WeatherList.serializer)
      ..add(Wind.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherDescription)]),
          () => new ListBuilder<WeatherDescription>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherList)]),
          () => new ListBuilder<WeatherList>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
