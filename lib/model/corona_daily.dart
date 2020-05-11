import 'dart:convert';

class CoronaDaily {
    int totalConfirmed;
    int mainlandChina;
    int otherLocations;
    int deltaConfirmed;
    int totalRecovered;
    Confirmed confirmed;
    Confirmed deltaConfirmedDetail;
    Confirmed deaths;
    Confirmed recovered;
    int active;
    int deltaRecovered;
    double incidentRate;
    int peopleTested;
    DateTime reportDate;

    CoronaDaily({
        this.totalConfirmed,
        this.mainlandChina,
        this.otherLocations,
        this.deltaConfirmed,
        this.totalRecovered,
        this.confirmed,
        this.deltaConfirmedDetail,
        this.deaths,
        this.recovered,
        this.active,
        this.deltaRecovered,
        this.incidentRate,
        this.peopleTested,
        this.reportDate,
    });

    factory CoronaDaily.fromJson(String str) => CoronaDaily.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CoronaDaily.fromMap(Map<String, dynamic> json) => CoronaDaily(
        totalConfirmed: json["totalConfirmed"],
        mainlandChina: json["mainlandChina"],
        otherLocations: json["otherLocations"],
        deltaConfirmed: json["deltaConfirmed"],
        totalRecovered: json["totalRecovered"],
        confirmed: Confirmed.fromMap(json["confirmed"]),
        deltaConfirmedDetail: Confirmed.fromMap(json["deltaConfirmedDetail"]),
        deaths: Confirmed.fromMap(json["deaths"]),
        recovered: Confirmed.fromMap(json["recovered"]),
        active: json["active"],
        deltaRecovered: json["deltaRecovered"],
        incidentRate: json["incidentRate"].toDouble(),
        peopleTested: json["peopleTested"],
        reportDate: DateTime.parse(json["reportDate"]),
    );

    Map<String, dynamic> toMap() => {
        "totalConfirmed": totalConfirmed,
        "mainlandChina": mainlandChina,
        "otherLocations": otherLocations,
        "deltaConfirmed": deltaConfirmed,
        "totalRecovered": totalRecovered,
        "confirmed": confirmed.toMap(),
        "deltaConfirmedDetail": deltaConfirmedDetail.toMap(),
        "deaths": deaths.toMap(),
        "recovered": recovered.toMap(),
        "active": active,
        "deltaRecovered": deltaRecovered,
        "incidentRate": incidentRate,
        "peopleTested": peopleTested,
        "reportDate": "${reportDate.year.toString().padLeft(4, '0')}-${reportDate.month.toString().padLeft(2, '0')}-${reportDate.day.toString().padLeft(2, '0')}",
    };
}

class Confirmed {
    int total;
    int china;
    int outsideChina;

    Confirmed({
        this.total,
        this.china,
        this.outsideChina,
    });

    factory Confirmed.fromJson(String str) => Confirmed.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Confirmed.fromMap(Map<String, dynamic> json) => Confirmed(
        total: json["total"],
        china: json["china"],
        outsideChina: json["outsideChina"],
    );

    Map<String, dynamic> toMap() => {
        "total": total,
        "china": china,
        "outsideChina": outsideChina,
    };
}
