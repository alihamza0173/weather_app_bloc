// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<WeatherList> _$weatherListSerializer = new _$WeatherListSerializer();
Serializer<Main> _$mainSerializer = new _$MainSerializer();
Serializer<WeatherDescription> _$weatherDescriptionSerializer =
    new _$WeatherDescriptionSerializer();
Serializer<Clouds> _$cloudsSerializer = new _$CloudsSerializer();
Serializer<Wind> _$windSerializer = new _$WindSerializer();
Serializer<Sys> _$sysSerializer = new _$SysSerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherList)])),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'list':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherList)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherListSerializer implements StructuredSerializer<WeatherList> {
  @override
  final Iterable<Type> types = const [WeatherList, _$WeatherList];
  @override
  final String wireName = 'WeatherList';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(Main)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeatherDescription)])),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(Clouds)),
      'wind',
      serializers.serialize(object.wind, specifiedType: const FullType(Wind)),
      'sys',
      serializers.serialize(object.sys, specifiedType: const FullType(Sys)),
    ];
    Object? value;
    value = object.dt;
    if (value != null) {
      result
        ..add('dt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dtTxt;
    if (value != null) {
      result
        ..add('dt_txt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pop;
    if (value != null) {
      result
        ..add('pop')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  WeatherList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(Main))! as Main);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherDescription)]))!
              as BuiltList<Object?>);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(Clouds))! as Clouds);
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(Wind))! as Wind);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys))! as Sys);
          break;
        case 'dt_txt':
          result.dtTxt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$MainSerializer implements StructuredSerializer<Main> {
  @override
  final Iterable<Type> types = const [Main, _$Main];
  @override
  final String wireName = 'Main';

  @override
  Iterable<Object?> serialize(Serializers serializers, Main object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.temp;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.feelsLike;
    if (value != null) {
      result
        ..add('feels_like')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempMin;
    if (value != null) {
      result
        ..add('temp_min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempMax;
    if (value != null) {
      result
        ..add('temp_max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pressure;
    if (value != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.seaLevel;
    if (value != null) {
      result
        ..add('sea_level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.grndLevel;
    if (value != null) {
      result
        ..add('grnd_level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Main deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_min':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_max':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sea_level':
          result.seaLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'grnd_level':
          result.grndLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDescriptionSerializer
    implements StructuredSerializer<WeatherDescription> {
  @override
  final Iterable<Type> types = const [WeatherDescription, _$WeatherDescription];
  @override
  final String wireName = 'WeatherDescription';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherDescription object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.main;
    if (value != null) {
      result
        ..add('main')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherDescription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDescriptionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CloudsSerializer implements StructuredSerializer<Clouds> {
  @override
  final Iterable<Type> types = const [Clouds, _$Clouds];
  @override
  final String wireName = 'Clouds';

  @override
  Iterable<Object?> serialize(Serializers serializers, Clouds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.all;
    if (value != null) {
      result
        ..add('all')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Clouds deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloudsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WindSerializer implements StructuredSerializer<Wind> {
  @override
  final Iterable<Type> types = const [Wind, _$Wind];
  @override
  final String wireName = 'Wind';

  @override
  Iterable<Object?> serialize(Serializers serializers, Wind object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.speed;
    if (value != null) {
      result
        ..add('speed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deg;
    if (value != null) {
      result
        ..add('deg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gust;
    if (value != null) {
      result
        ..add('gust')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Wind deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gust':
          result.gust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$SysSerializer implements StructuredSerializer<Sys> {
  @override
  final Iterable<Type> types = const [Sys, _$Sys];
  @override
  final String wireName = 'Sys';

  @override
  Iterable<Object?> serialize(Serializers serializers, Sys object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pod;
    if (value != null) {
      result
        ..add('pod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Sys deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pod':
          result.pod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final BuiltList<WeatherList> weather;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates))._build();

  _$Weather._({required this.weather}) : super._() {
    BuiltValueNullFieldError.checkNotNull(weather, r'Weather', 'weather');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather && weather == other.weather;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Weather')..add('weather', weather))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  ListBuilder<WeatherList>? _weather;
  ListBuilder<WeatherList> get weather =>
      _$this._weather ??= new ListBuilder<WeatherList>();
  set weather(ListBuilder<WeatherList>? weather) => _$this._weather = weather;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weather = $v.weather.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Weather build() => _build();

  _$Weather _build() {
    _$Weather _$result;
    try {
      _$result = _$v ?? new _$Weather._(weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Weather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherList extends WeatherList {
  @override
  final int? dt;
  @override
  final Main main;
  @override
  final BuiltList<WeatherDescription> weather;
  @override
  final Clouds clouds;
  @override
  final Wind wind;
  @override
  final int? visibility;
  @override
  final Sys sys;
  @override
  final String? dtTxt;
  @override
  final double? pop;

  factory _$WeatherList([void Function(WeatherListBuilder)? updates]) =>
      (new WeatherListBuilder()..update(updates))._build();

  _$WeatherList._(
      {this.dt,
      required this.main,
      required this.weather,
      required this.clouds,
      required this.wind,
      this.visibility,
      required this.sys,
      this.dtTxt,
      this.pop})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(main, r'WeatherList', 'main');
    BuiltValueNullFieldError.checkNotNull(weather, r'WeatherList', 'weather');
    BuiltValueNullFieldError.checkNotNull(clouds, r'WeatherList', 'clouds');
    BuiltValueNullFieldError.checkNotNull(wind, r'WeatherList', 'wind');
    BuiltValueNullFieldError.checkNotNull(sys, r'WeatherList', 'sys');
  }

  @override
  WeatherList rebuild(void Function(WeatherListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherListBuilder toBuilder() => new WeatherListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherList &&
        dt == other.dt &&
        main == other.main &&
        weather == other.weather &&
        clouds == other.clouds &&
        wind == other.wind &&
        visibility == other.visibility &&
        sys == other.sys &&
        dtTxt == other.dtTxt &&
        pop == other.pop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, wind.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, sys.hashCode);
    _$hash = $jc(_$hash, dtTxt.hashCode);
    _$hash = $jc(_$hash, pop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherList')
          ..add('dt', dt)
          ..add('main', main)
          ..add('weather', weather)
          ..add('clouds', clouds)
          ..add('wind', wind)
          ..add('visibility', visibility)
          ..add('sys', sys)
          ..add('dtTxt', dtTxt)
          ..add('pop', pop))
        .toString();
  }
}

class WeatherListBuilder implements Builder<WeatherList, WeatherListBuilder> {
  _$WeatherList? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  MainBuilder? _main;
  MainBuilder get main => _$this._main ??= new MainBuilder();
  set main(MainBuilder? main) => _$this._main = main;

  ListBuilder<WeatherDescription>? _weather;
  ListBuilder<WeatherDescription> get weather =>
      _$this._weather ??= new ListBuilder<WeatherDescription>();
  set weather(ListBuilder<WeatherDescription>? weather) =>
      _$this._weather = weather;

  CloudsBuilder? _clouds;
  CloudsBuilder get clouds => _$this._clouds ??= new CloudsBuilder();
  set clouds(CloudsBuilder? clouds) => _$this._clouds = clouds;

  WindBuilder? _wind;
  WindBuilder get wind => _$this._wind ??= new WindBuilder();
  set wind(WindBuilder? wind) => _$this._wind = wind;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  SysBuilder? _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder? sys) => _$this._sys = sys;

  String? _dtTxt;
  String? get dtTxt => _$this._dtTxt;
  set dtTxt(String? dtTxt) => _$this._dtTxt = dtTxt;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  WeatherListBuilder();

  WeatherListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _main = $v.main.toBuilder();
      _weather = $v.weather.toBuilder();
      _clouds = $v.clouds.toBuilder();
      _wind = $v.wind.toBuilder();
      _visibility = $v.visibility;
      _sys = $v.sys.toBuilder();
      _dtTxt = $v.dtTxt;
      _pop = $v.pop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherList;
  }

  @override
  void update(void Function(WeatherListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherList build() => _build();

  _$WeatherList _build() {
    _$WeatherList _$result;
    try {
      _$result = _$v ??
          new _$WeatherList._(
              dt: dt,
              main: main.build(),
              weather: weather.build(),
              clouds: clouds.build(),
              wind: wind.build(),
              visibility: visibility,
              sys: sys.build(),
              dtTxt: dtTxt,
              pop: pop);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        main.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'clouds';
        clouds.build();
        _$failedField = 'wind';
        wind.build();

        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Main extends Main {
  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final double? tempMin;
  @override
  final double? tempMax;
  @override
  final int? pressure;
  @override
  final int? seaLevel;
  @override
  final int? grndLevel;
  @override
  final int? humidity;

  factory _$Main([void Function(MainBuilder)? updates]) =>
      (new MainBuilder()..update(updates))._build();

  _$Main._(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.seaLevel,
      this.grndLevel,
      this.humidity})
      : super._();

  @override
  Main rebuild(void Function(MainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainBuilder toBuilder() => new MainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Main &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        seaLevel == other.seaLevel &&
        grndLevel == other.grndLevel &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feelsLike.hashCode);
    _$hash = $jc(_$hash, tempMin.hashCode);
    _$hash = $jc(_$hash, tempMax.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jc(_$hash, seaLevel.hashCode);
    _$hash = $jc(_$hash, grndLevel.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Main')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax)
          ..add('pressure', pressure)
          ..add('seaLevel', seaLevel)
          ..add('grndLevel', grndLevel)
          ..add('humidity', humidity))
        .toString();
  }
}

class MainBuilder implements Builder<Main, MainBuilder> {
  _$Main? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  double? _tempMin;
  double? get tempMin => _$this._tempMin;
  set tempMin(double? tempMin) => _$this._tempMin = tempMin;

  double? _tempMax;
  double? get tempMax => _$this._tempMax;
  set tempMax(double? tempMax) => _$this._tempMax = tempMax;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _seaLevel;
  int? get seaLevel => _$this._seaLevel;
  set seaLevel(int? seaLevel) => _$this._seaLevel = seaLevel;

  int? _grndLevel;
  int? get grndLevel => _$this._grndLevel;
  set grndLevel(int? grndLevel) => _$this._grndLevel = grndLevel;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  MainBuilder();

  MainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _tempMin = $v.tempMin;
      _tempMax = $v.tempMax;
      _pressure = $v.pressure;
      _seaLevel = $v.seaLevel;
      _grndLevel = $v.grndLevel;
      _humidity = $v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Main other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Main;
  }

  @override
  void update(void Function(MainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Main build() => _build();

  _$Main _build() {
    final _$result = _$v ??
        new _$Main._(
            temp: temp,
            feelsLike: feelsLike,
            tempMin: tempMin,
            tempMax: tempMax,
            pressure: pressure,
            seaLevel: seaLevel,
            grndLevel: grndLevel,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

class _$WeatherDescription extends WeatherDescription {
  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  factory _$WeatherDescription(
          [void Function(WeatherDescriptionBuilder)? updates]) =>
      (new WeatherDescriptionBuilder()..update(updates))._build();

  _$WeatherDescription._({this.id, this.main, this.description, this.icon})
      : super._();

  @override
  WeatherDescription rebuild(
          void Function(WeatherDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDescriptionBuilder toBuilder() =>
      new WeatherDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDescription &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDescription')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherDescriptionBuilder
    implements Builder<WeatherDescription, WeatherDescriptionBuilder> {
  _$WeatherDescription? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherDescriptionBuilder();

  WeatherDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDescription;
  }

  @override
  void update(void Function(WeatherDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDescription build() => _build();

  _$WeatherDescription _build() {
    final _$result = _$v ??
        new _$WeatherDescription._(
            id: id, main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
  }
}

class _$Clouds extends Clouds {
  @override
  final int? all;

  factory _$Clouds([void Function(CloudsBuilder)? updates]) =>
      (new CloudsBuilder()..update(updates))._build();

  _$Clouds._({this.all}) : super._();

  @override
  Clouds rebuild(void Function(CloudsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudsBuilder toBuilder() => new CloudsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clouds && all == other.all;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Clouds')..add('all', all)).toString();
  }
}

class CloudsBuilder implements Builder<Clouds, CloudsBuilder> {
  _$Clouds? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  CloudsBuilder();

  CloudsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Clouds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Clouds;
  }

  @override
  void update(void Function(CloudsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Clouds build() => _build();

  _$Clouds _build() {
    final _$result = _$v ?? new _$Clouds._(all: all);
    replace(_$result);
    return _$result;
  }
}

class _$Wind extends Wind {
  @override
  final double? speed;
  @override
  final int? deg;
  @override
  final double? gust;

  factory _$Wind([void Function(WindBuilder)? updates]) =>
      (new WindBuilder()..update(updates))._build();

  _$Wind._({this.speed, this.deg, this.gust}) : super._();

  @override
  Wind rebuild(void Function(WindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindBuilder toBuilder() => new WindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Wind &&
        speed == other.speed &&
        deg == other.deg &&
        gust == other.gust;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, deg.hashCode);
    _$hash = $jc(_$hash, gust.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Wind')
          ..add('speed', speed)
          ..add('deg', deg)
          ..add('gust', gust))
        .toString();
  }
}

class WindBuilder implements Builder<Wind, WindBuilder> {
  _$Wind? _$v;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  int? _deg;
  int? get deg => _$this._deg;
  set deg(int? deg) => _$this._deg = deg;

  double? _gust;
  double? get gust => _$this._gust;
  set gust(double? gust) => _$this._gust = gust;

  WindBuilder();

  WindBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speed = $v.speed;
      _deg = $v.deg;
      _gust = $v.gust;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Wind other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Wind;
  }

  @override
  void update(void Function(WindBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Wind build() => _build();

  _$Wind _build() {
    final _$result = _$v ?? new _$Wind._(speed: speed, deg: deg, gust: gust);
    replace(_$result);
    return _$result;
  }
}

class _$Sys extends Sys {
  @override
  final String? pod;

  factory _$Sys([void Function(SysBuilder)? updates]) =>
      (new SysBuilder()..update(updates))._build();

  _$Sys._({this.pod}) : super._();

  @override
  Sys rebuild(void Function(SysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysBuilder toBuilder() => new SysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sys && pod == other.pod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sys')..add('pod', pod)).toString();
  }
}

class SysBuilder implements Builder<Sys, SysBuilder> {
  _$Sys? _$v;

  String? _pod;
  String? get pod => _$this._pod;
  set pod(String? pod) => _$this._pod = pod;

  SysBuilder();

  SysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pod = $v.pod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sys other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sys;
  }

  @override
  void update(void Function(SysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sys build() => _build();

  _$Sys _build() {
    final _$result = _$v ?? new _$Sys._(pod: pod);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
