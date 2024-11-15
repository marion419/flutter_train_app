

import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/Widgets/station_select.dart';

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
          StationSelect('수서'),
          StationSelect('동탄'),
          StationSelect('평택지제'),
          StationSelect('천안아산'),
          StationSelect('오송'),
          StationSelect('대전'),
          StationSelect('김천구미'),
          StationSelect('동대구'),
          StationSelect('경주'),
          StationSelect('울산'),
          StationSelect('부산'),
        ],
      ),
    );
  }

  
}