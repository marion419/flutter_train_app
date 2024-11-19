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
                    // 역 이름이 길면 박스 사이즈를 넘어가서 폰트 사이즈 40->35로 조정했습니다
                    fontSize: 35,
                    color: Theme.of(context).colorScheme.tertiary
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