

import 'package:flutter/material.dart';


class StationListPage extends StatelessWidget {
  List<String> items =
      <String>["수서","동탄","평택지제","천안아산","오송","대전","김천구미","동대구","경주","울산","부산"];

  final String direction;
  final String except;
  StationListPage({super.key, required this.direction, required this.except}){
    if(except!='선택'){
      items.remove(except);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(direction),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.pop(context, items[index]);
            },
          );
        },
      ),
    );
  }
}