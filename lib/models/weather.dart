class Weather {
  double latitude;
  double longitude;
  String timezone;
  Currently currently;
  Hourly hourly;
  Daily daily;
  Flags flags;
  int offset;

  Weather(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.currently,
      this.hourly,
      this.daily,
      this.flags,
      this.offset});

  Weather.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    timezone = json['timezone'];
    currently = json['currently'] != null
        ? new Currently.fromJson(json['currently'])
        : null;
    hourly =
        json['hourly'] != null ? new Hourly.fromJson(json['hourly']) : null;
    daily = json['daily'] != null ? new Daily.fromJson(json['daily']) : null;
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    offset = json['offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['timezone'] = this.timezone;
    if (this.currently != null) {
      data['currently'] = this.currently.toJson();
    }
    if (this.hourly != null) {
      data['hourly'] = this.hourly.toJson();
    }
    if (this.daily != null) {
      data['daily'] = this.daily.toJson();
    }
    if (this.flags != null) {
      data['flags'] = this.flags.toJson();
    }
    data['offset'] = this.offset;
    return data;
  }
}

class Currently {
  int time;
  String summary;
  String icon;
  double precipIntensity;
  double precipProbability;
  double temperature;
  double apparentTemperature;
  double dewPoint;
  double humidity;
  double pressure;
  double windSpeed;
  double windGust;
  double windBearing;
  double cloudCover;
  double uvIndex;
  double visibility;
  double ozone;

  Currently(
      {this.time,
      this.summary,
      this.icon,
      this.precipIntensity,
      this.precipProbability,
      this.temperature,
      this.apparentTemperature,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windBearing,
      this.cloudCover,
      this.uvIndex,
      this.visibility,
      this.ozone});

  Currently.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    summary = json['summary'];
    icon = json['icon'];
    precipIntensity = num.parse(json['precipIntensity'].toStringAsFixed(2));;
    precipProbability = num.parse(json['precipProbability'].toStringAsFixed(2));;
    temperature = num.parse(json['temperature'].toStringAsFixed(2));;
    apparentTemperature = num.parse(json['apparentTemperature'].toStringAsFixed(2));;
    dewPoint = num.parse(json['dewPoint'].toStringAsFixed(2));;
    humidity = num.parse(json['humidity'].toStringAsFixed(2));;
    pressure = num.parse(json['pressure'].toStringAsFixed(2));;
    windSpeed = num.parse(json['windSpeed'].toStringAsFixed(2));;
    windGust = num.parse(json['windGust'].toStringAsFixed(2));;
    windBearing = num.parse(json['windBearing'].toStringAsFixed(2));;
    cloudCover = num.parse(json['cloudCover'].toStringAsFixed(2));;
    uvIndex = num.parse(json['uvIndex'].toStringAsFixed(2));;
    visibility = num.parse(json['visibility'].toStringAsFixed(2));;
    ozone = num.parse(json['ozone'].toStringAsFixed(2));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['summary'] = this.summary;
    data['icon'] = this.icon;
    data['precipIntensity'] = this.precipIntensity;
    data['precipProbability'] = this.precipProbability;
    data['temperature'] = this.temperature;
    data['apparentTemperature'] = this.apparentTemperature;
    data['dewPoint'] = this.dewPoint;
    data['humidity'] = this.humidity;
    data['pressure'] = this.pressure;
    data['windSpeed'] = this.windSpeed;
    data['windGust'] = this.windGust;
    data['windBearing'] = this.windBearing;
    data['cloudCover'] = this.cloudCover;
    data['uvIndex'] = this.uvIndex;
    data['visibility'] = this.visibility;
    data['ozone'] = this.ozone;
    return data;
  }
}

class Hourly {
  String summary;
  String icon;
  List<HourlyData> data;

  Hourly({this.summary, this.icon, this.data});

  Hourly.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    icon = json['icon'];
    if (json['data'] != null) {
      data = new List<HourlyData>();
      json['data'].forEach((v) {
        data.add(new HourlyData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['icon'] = this.icon;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HourlyData {
  int time;
  String summary;
  String icon;
  double precipIntensity;
  double precipProbability;
  double temperature;
  double apparentTemperature;
  double dewPoint;
  double humidity;
  double pressure;
  double windSpeed;
  double windGust;
  double windBearing;
  double cloudCover;
  double uvIndex;
  double visibility;
  double ozone;
  String precipType;

  HourlyData(
      {this.time,
      this.summary,
      this.icon,
      this.precipIntensity,
      this.precipProbability,
      this.temperature,
      this.apparentTemperature,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windBearing,
      this.cloudCover,
      this.uvIndex,
      this.visibility,
      this.ozone,
      this.precipType});

  HourlyData.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    summary = json['summary'];
    icon = json['icon'];
    precipIntensity =num.parse(json['precipIntensity'].toStringAsFixed(2));
    precipProbability = num.parse(json['precipProbability'].toStringAsFixed(2));
    temperature = num.parse(json['temperature'].toStringAsFixed(2));
    apparentTemperature =  num.parse(json['apparentTemperature'].toStringAsFixed(2));
    dewPoint = num.parse(json['dewPoint'].toStringAsFixed(2));
    humidity = num.parse(json['humidity'].toStringAsFixed(2));
    pressure = num.parse(json['pressure'].toStringAsFixed(2));
    windSpeed = num.parse(json['windSpeed'].toStringAsFixed(2));
    windGust = num.parse(json['windGust'].toStringAsFixed(2));
    windBearing = num.parse(json['windBearing'].toStringAsFixed(2));
    cloudCover = num.parse(json['cloudCover'].toStringAsFixed(2));
    uvIndex = num.parse(json['uvIndex'].toStringAsFixed(2));
    visibility = num.parse(json['visibility'].toStringAsFixed(2));
    ozone = num.parse(json['ozone'].toStringAsFixed(2));
    precipType = json['precipType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['summary'] = this.summary;
    data['icon'] = this.icon;
    data['precipIntensity'] = this.precipIntensity;
    data['precipProbability'] = this.precipProbability;
    data['temperature'] = this.temperature;
    data['apparentTemperature'] = this.apparentTemperature;
    data['dewPoint'] = this.dewPoint;
    data['humidity'] = this.humidity;
    data['pressure'] = this.pressure;
    data['windSpeed'] = this.windSpeed;
    data['windGust'] = this.windGust;
    data['windBearing'] = this.windBearing;
    data['cloudCover'] = this.cloudCover;
    data['uvIndex'] = this.uvIndex;
    data['visibility'] = this.visibility;
    data['ozone'] = this.ozone;
    data['precipType'] = this.precipType;
    return data;
  }
}

class Daily {
  String summary;
  String icon;
  List<DailyData> data;

  Daily({this.summary, this.icon, this.data});

  Daily.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    icon = json['icon'];
    if (json['data'] != null) {
      data = new List<DailyData>();
      json['data'].forEach((v) {
        data.add(new DailyData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['icon'] = this.icon;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DailyData {
  int time;
  String summary;
  String icon;
  int sunriseTime;
  int sunsetTime;
  double moonPhase;
  double precipIntensity;
  double precipIntensityMax;
  int precipIntensityMaxTime;
  double precipProbability;
  String precipType;
  double temperatureHigh;
  int temperatureHighTime;
  double temperatureLow;
  int temperatureLowTime;
  double apparentTemperatureHigh;
  int apparentTemperatureHighTime;
  double apparentTemperatureLow;
  int apparentTemperatureLowTime;
  double dewPoint;
  double humidity;
  double pressure;
  double windSpeed;
  double windGust;
  int windGustTime;
  double windBearing;
  double cloudCover;
  double uvIndex;
  int uvIndexTime;
  double visibility;
  double ozone;
  double temperatureMin;
  int temperatureMinTime;
  double temperatureMax;
  int temperatureMaxTime;
  double apparentTemperatureMin;
  int apparentTemperatureMinTime;
  double apparentTemperatureMax;
  int apparentTemperatureMaxTime;

  DailyData(
      {this.time,
      this.summary,
      this.icon,
      this.sunriseTime,
      this.sunsetTime,
      this.moonPhase,
      this.precipIntensity,
      this.precipIntensityMax,
      this.precipIntensityMaxTime,
      this.precipProbability,
      this.precipType,
      this.temperatureHigh,
      this.temperatureHighTime,
      this.temperatureLow,
      this.temperatureLowTime,
      this.apparentTemperatureHigh,
      this.apparentTemperatureHighTime,
      this.apparentTemperatureLow,
      this.apparentTemperatureLowTime,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windGustTime,
      this.windBearing,
      this.cloudCover,
      this.uvIndex,
      this.uvIndexTime,
      this.visibility,
      this.ozone,
      this.temperatureMin,
      this.temperatureMinTime,
      this.temperatureMax,
      this.temperatureMaxTime,
      this.apparentTemperatureMin,
      this.apparentTemperatureMinTime,
      this.apparentTemperatureMax,
      this.apparentTemperatureMaxTime});

  DailyData.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    summary = json['summary'];
    icon = json['icon'];
    sunriseTime = json['sunriseTime'];
    sunsetTime = json['sunsetTime'];
    moonPhase = num.parse(json['moonPhase'].toStringAsFixed(2));
    precipIntensity = num.parse(json['precipIntensity'].toStringAsFixed(2));
    precipIntensityMax = num.parse(json['precipIntensityMax'].toStringAsFixed(2));
    precipIntensityMaxTime = json['precipIntensityMaxTime'];
    precipProbability = num.parse(json['precipProbability'].toStringAsFixed(2));
    precipType = json['precipType'];
    temperatureHigh = num.parse(json['temperatureHigh'].toStringAsFixed(2));
    temperatureHighTime = json['temperatureHighTime'];
    temperatureLow = num.parse(json['temperatureLow'].toStringAsFixed(2));
    temperatureLowTime = json['temperatureLowTime'];
    apparentTemperatureHigh = num.parse(json['apparentTemperatureHigh'].toStringAsFixed(2));
    apparentTemperatureHighTime = json['apparentTemperatureHighTime'];
    apparentTemperatureLow = num.parse(json['apparentTemperatureLow'].toStringAsFixed(2));
    apparentTemperatureLowTime = json['apparentTemperatureLowTime'];
    dewPoint = num.parse(json['dewPoint'].toStringAsFixed(2));
    humidity = num.parse(json['humidity'].toStringAsFixed(2));
    pressure = num.parse(json['pressure'].toStringAsFixed(2));
    windSpeed = num.parse(json['windSpeed'].toStringAsFixed(2));
    windGust = num.parse(json['windGust'].toStringAsFixed(2));
    windGustTime = json['windGustTime'];
    windBearing = num.parse(json['windBearing'].toStringAsFixed(2));
    cloudCover = num.parse(json['cloudCover'].toStringAsFixed(2));
    uvIndex = num.parse(json['uvIndex'].toStringAsFixed(2));
    uvIndexTime = json['uvIndexTime'];
    visibility = num.parse(json['visibility'].toStringAsFixed(2));
    ozone = num.parse(json['ozone'].toStringAsFixed(2));
    temperatureMin = num.parse(json['temperatureMin'].toStringAsFixed(2));
    temperatureMinTime = json['temperatureMinTime'];
    temperatureMax = num.parse(json['temperatureMax'].toStringAsFixed(2));
    temperatureMaxTime = json['temperatureMaxTime'];
    apparentTemperatureMin = num.parse(json['apparentTemperatureMin'].toStringAsFixed(2));
    apparentTemperatureMinTime = json['apparentTemperatureMinTime'];
    apparentTemperatureMax = num.parse(json['apparentTemperatureMax'].toStringAsFixed(2));
    apparentTemperatureMaxTime = json['apparentTemperatureMaxTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['summary'] = this.summary;
    data['icon'] = this.icon;
    data['sunriseTime'] = this.sunriseTime;
    data['sunsetTime'] = this.sunsetTime;
    data['moonPhase'] = this.moonPhase;
    data['precipIntensity'] = this.precipIntensity;
    data['precipIntensityMax'] = this.precipIntensityMax;
    data['precipIntensityMaxTime'] = this.precipIntensityMaxTime;
    data['precipProbability'] = this.precipProbability;
    data['precipType'] = this.precipType;
    data['temperatureHigh'] = this.temperatureHigh;
    data['temperatureHighTime'] = this.temperatureHighTime;
    data['temperatureLow'] = this.temperatureLow;
    data['temperatureLowTime'] = this.temperatureLowTime;
    data['apparentTemperatureHigh'] = this.apparentTemperatureHigh;
    data['apparentTemperatureHighTime'] = this.apparentTemperatureHighTime;
    data['apparentTemperatureLow'] = this.apparentTemperatureLow;
    data['apparentTemperatureLowTime'] = this.apparentTemperatureLowTime;
    data['dewPoint'] = this.dewPoint;
    data['humidity'] = this.humidity;
    data['pressure'] = this.pressure;
    data['windSpeed'] = this.windSpeed;
    data['windGust'] = this.windGust;
    data['windGustTime'] = this.windGustTime;
    data['windBearing'] = this.windBearing;
    data['cloudCover'] = this.cloudCover;
    data['uvIndex'] = this.uvIndex;
    data['uvIndexTime'] = this.uvIndexTime;
    data['visibility'] = this.visibility;
    data['ozone'] = this.ozone;
    data['temperatureMin'] = this.temperatureMin;
    data['temperatureMinTime'] = this.temperatureMinTime;
    data['temperatureMax'] = this.temperatureMax;
    data['temperatureMaxTime'] = this.temperatureMaxTime;
    data['apparentTemperatureMin'] = this.apparentTemperatureMin;
    data['apparentTemperatureMinTime'] = this.apparentTemperatureMinTime;
    data['apparentTemperatureMax'] = this.apparentTemperatureMax;
    data['apparentTemperatureMaxTime'] = this.apparentTemperatureMaxTime;
    return data;
  }
}

class Flags {
  List<String> sources;
  String meteoalarmLicense;
  double nearestStation;
  String units;

  Flags(
      {this.sources, this.meteoalarmLicense, this.nearestStation, this.units});

  Flags.fromJson(Map<String, dynamic> json) {
    sources = json['sources'].cast<String>();
    meteoalarmLicense = json['meteoalarm-license'];
    nearestStation = json['nearest-station'];
    units = json['units'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sources'] = this.sources;
    data['meteoalarm-license'] = this.meteoalarmLicense;
    data['nearest-station'] = this.nearestStation;
    data['units'] = this.units;
    return data;
  }
}
