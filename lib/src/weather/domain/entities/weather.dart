import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  @BuiltValueField(wireName: 'list')
  BuiltList<WeatherList> get weather;

  static Serializer<Weather> get serializer => _$weatherSerializer;

  Weather._();

  factory Weather([void Function(WeatherBuilder) updates]) = _$Weather;
}

abstract class WeatherList implements Built<WeatherList, WeatherListBuilder> {
  int? get dt;

  Main get main;

  BuiltList<WeatherDescription> get weather;

  Clouds get clouds;

  Wind get wind;

  int? get visibility;

  Sys get sys;

  @BuiltValueField(wireName: 'dt_txt')
  String? get dtTxt;

  // New field for probability of precipitation
  @BuiltValueField(wireName: 'pop')
  double? get pop;

  static Serializer<WeatherList> get serializer => _$weatherListSerializer;

  WeatherList._();

  factory WeatherList([void Function(WeatherListBuilder) updates]) =
      _$WeatherList;
}

abstract class Main implements Built<Main, MainBuilder> {
  double? get temp;

  @BuiltValueField(wireName: 'feels_like')
  double? get feelsLike;

  @BuiltValueField(wireName: 'temp_min')
  double? get tempMin;

  @BuiltValueField(wireName: 'temp_max')
  double? get tempMax;

  int? get pressure;

  @BuiltValueField(wireName: 'sea_level')
  int? get seaLevel;

  @BuiltValueField(wireName: 'grnd_level')
  int? get grndLevel;

  int? get humidity;

  static Serializer<Main> get serializer => _$mainSerializer;

  Main._();

  factory Main([void Function(MainBuilder) updates]) = _$Main;
}

abstract class WeatherDescription
    implements Built<WeatherDescription, WeatherDescriptionBuilder> {
  int? get id;

  String? get main;

  String? get description;

  String? get icon;

  static Serializer<WeatherDescription> get serializer =>
      _$weatherDescriptionSerializer;

  WeatherDescription._();

  factory WeatherDescription(
          [void Function(WeatherDescriptionBuilder) updates]) =
      _$WeatherDescription;
}

abstract class Clouds implements Built<Clouds, CloudsBuilder> {
  int? get all;

  static Serializer<Clouds> get serializer => _$cloudsSerializer;

  Clouds._();

  factory Clouds([void Function(CloudsBuilder) updates]) = _$Clouds;
}

abstract class Wind implements Built<Wind, WindBuilder> {
  double? get speed;

  int? get deg;

  double? get gust;

  static Serializer<Wind> get serializer => _$windSerializer;

  Wind._();

  factory Wind([void Function(WindBuilder) updates]) = _$Wind;
}

abstract class Sys implements Built<Sys, SysBuilder> {
  String? get pod;

  static Serializer<Sys> get serializer => _$sysSerializer;

  Sys._();

  factory Sys([void Function(SysBuilder) updates]) = _$Sys;
}
