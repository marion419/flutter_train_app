

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

  final List<String> stations=["수서","동탄","평택지제","천안아산","오송","대전","김천구미","동대구","경주","울산","부산"];

  @override
  void initState() {
    super.initState();
    direction = widget.station;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stations.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide())
          ),
        );
      },
    );
  }

  
}