import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class SelectDepart extends StatelessWidget{
  String direction;
  String station;
  void Function(String newValue) onDepartChanged;

  SelectDepart(this.direction, this.station, this.onDepartChanged);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      // 출발역 선택
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(direction,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              TextButton(
                onPressed: () async {
                  final returnStation = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StationListPage(direction: direction, station: station,))
                  );
                  onDepartChanged(returnStation);
                },
                child: Text(station,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}