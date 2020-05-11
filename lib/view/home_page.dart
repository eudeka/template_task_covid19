import 'package:covid19/model/corona_summary.dart';
import 'package:covid19/view/home_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<CoronaSummary>(
          // TODO : buat [future] untuk mendapatkan data dari internet
          // TODO : buat [builder] untuk menampilkan [HomeContent] jika data ada
          builder: null,
        ),
      ),
    );
  }
}
