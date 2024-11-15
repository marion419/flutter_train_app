

import 'package:flutter/material.dart';

class StationListPage extends StatefulWidget{
  final String station;
  final String direction;
  const StationListPage({super.key, required this.direction,required this.station});

  @override
  State<StationListPage> createState() => _StationListPage();

}

class _StationListPage extends State<StationListPage>{

  String direction='';
  String station='';

  @override
  void initState() {
    super.initState();
    direction = widget.station;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(direction),
        centerTitle: true,
      ),
      body: 
      ListView(
        children: [
          stationSelect('수서'),
          stationSelect('동탄'),
          stationSelect('평택지제'),
          stationSelect('천안아산'),
          stationSelect('오송'),
          stationSelect('대전'),
          stationSelect('김천구미'),
          stationSelect('동대구'),
          stationSelect('경주'),
          stationSelect('울산'),
          stationSelect('부산'),
        ],
      ),
    );
  }

  Widget stationSelect(String station) {

    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!)
        )
      ),
      child: 
      TextButton(
        onPressed: (){
          Navigator.pop(context, station);
        },
        child: Text('   $station',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}