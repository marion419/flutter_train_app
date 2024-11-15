// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String depart='선택';
  String arrive='선택';
  void onDepartChanged(String newDepart){
    setState(() {
      depart=newDepart;
    });
  }
  void onArriveChanged(String newArrive){
    setState(() {
      arrive=newArrive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('기차 예매'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //상부 여백
            SizedBox(height: 100),
            Center(
              // 출발역과 도착역을 나타내는 박스
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    selectDepart('출발역', depart),
                    // 세로 구분선
                    Container(
                      color: Colors.grey[400],
                      width: 2,
                      height: 50,
                    ),
                    // 도착역 선택
                    selectArrive('도착역', arrive),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(depart!='선택'&&arrive!='선택'){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SeatPage();
                    }));
                  }
                }, 
                child: 
                  Text('좌석 선택',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectDepart(String direction, String station) {
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

  Widget selectArrive(String direction, String station) {
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
                  onArriveChanged(returnStation);
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

