import 'package:covid19/config/environment.dart';
import 'package:covid19/model/corona_summary.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  final CoronaSummary summary;

  const HomeContent({
    Key key,
    this.summary,
  }) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<int> _listGlobalCases;

  @override
  void initState() {
    _listGlobalCases = <int>[
      widget.summary.confirmed.value,
      widget.summary.recovered.value,
      widget.summary.deaths.value,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.network("${widget.summary.image}"),
          _gridViewContent(),
          Text("Update Terakhir : ${widget.summary.lastUpdate}"),
        ],
      ),
    );
  }

  // TODO : buat untuk menampilkan data [_listGlobalCases] pada [GridView]
  Widget _gridViewContent() {
    return GridView.builder(
      gridDelegate: null,
      itemBuilder: null,
    );
  }
}
