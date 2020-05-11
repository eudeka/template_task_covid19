import 'dart:convert';

class CoronaSummary {
    Confirmed confirmed;
    Confirmed recovered;
    Confirmed deaths;
    String dailySummary;
    CountryDetail dailyTimeSeries;
    String image;
    String source;
    String countries;
    CountryDetail countryDetail;
    DateTime lastUpdate;

    CoronaSummary({
        this.confirmed,
        this.recovered,
        this.deaths,
        this.dailySummary,
        this.dailyTimeSeries,
        this.image,
        this.source,
        this.countries,
        this.countryDetail,
        this.lastUpdate,
    });

    factory CoronaSummary.fromJson(String str) => CoronaSummary.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CoronaSummary.fromMap(Map<String, dynamic> json) => CoronaSummary(
        confirmed: Confirmed.fromMap(json["confirmed"]),
        recovered: Confirmed.fromMap(json["recovered"]),
        deaths: Confirmed.fromMap(json["deaths"]),
        dailySummary: json["dailySummary"],
        dailyTimeSeries: CountryDetail.fromMap(json["dailyTimeSeries"]),
        image: json["image"],
        source: json["source"],
        countries: json["countries"],
        countryDetail: CountryDetail.fromMap(json["countryDetail"]),
        lastUpdate: DateTime.parse(json["lastUpdate"]),
    );

    Map<String, dynamic> toMap() => {
        "confirmed": confirmed.toMap(),
        "recovered": recovered.toMap(),
        "deaths": deaths.toMap(),
        "dailySummary": dailySummary,
        "dailyTimeSeries": dailyTimeSeries.toMap(),
        "image": image,
        "source": source,
        "countries": countries,
        "countryDetail": countryDetail.toMap(),
        "lastUpdate": lastUpdate.toIso8601String(),
    };
}

class Confirmed {
    int value;
    String detail;

    Confirmed({
        this.value,
        this.detail,
    });

    factory Confirmed.fromJson(String str) => Confirmed.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Confirmed.fromMap(Map<String, dynamic> json) => Confirmed(
        value: json["value"],
        detail: json["detail"],
    );

    Map<String, dynamic> toMap() => {
        "value": value,
        "detail": detail,
    };
}

class CountryDetail {
    String pattern;
    String example;

    CountryDetail({
        this.pattern,
        this.example,
    });

    factory CountryDetail.fromJson(String str) => CountryDetail.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CountryDetail.fromMap(Map<String, dynamic> json) => CountryDetail(
        pattern: json["pattern"],
        example: json["example"],
    );

    Map<String, dynamic> toMap() => {
        "pattern": pattern,
        "example": example,
    };
}
