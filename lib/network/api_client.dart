import 'package:covid19/model/corona_daily.dart';
import 'package:covid19/model/corona_summary.dart';
import 'package:http/http.dart';

// TODO : buat fungsi untuk mendapatkan data dari https://covid19.mathdro.id/api menggunakan library [http]
class ApiClient {
  // url route [/]
  Future<CoronaSummary> getCoronaSummary() async {
    return null;
  }

  // url route [/daily]
  Future<CoronaDaily> getCoronaDaily() async {
    return null;
  }
}
