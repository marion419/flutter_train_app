import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class SelectDepart extends StatelessWidget{
  String direction;
  String station;
  String arrive;
  void Function(String newValue) onDepartChanged;

  SelectDepart(this.direction, this.station, this.arrive, this.onDepartChanged);

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
              Text('출발역',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
              TextButton(
                onPressed: () async {
                  final returnStation = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StationListPage(direction: direction, except: arrive,))
                  );
                  onDepartChanged(returnStation);
                },
                child: Text(station,
                  style: TextStyle(
                    fontSize: 35,
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