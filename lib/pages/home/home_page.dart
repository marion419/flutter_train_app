// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';
import 'package:flutter_train_app/pages/home/Widgets/select_depart.dart';
import 'package:flutter_train_app/pages/home/Widgets/select_arrive.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: Text('기차 예매'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              // 출발역과 도착역을 나타내는 박스
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelectDepart('출발역', depart, arrive, onDepartChanged),
                    // 세로 구분선
                    Container(
                      color: Colors.grey[400],
                      width: 2,
                      height: 50,
                    ),
                    // 도착역 선택
                    SelectArrive('도착역', arrive, depart, onArriveChanged),
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
                      return SeatPage(depart, arrive);
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
}

