// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_train_app/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    SelectStation('출발역'),
                    // 세로 구분선
                    Container(
                      color: Colors.grey[400],
                      width: 2,
                      height: 50,
                    ),
                    // 도착역 선택
                    SelectStation('도착역'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){}, 
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

class SelectStation extends StatelessWidget {

  SelectStation(this.direction);
  String direction;


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
              Text('선택',
                style: TextStyle(
                  fontSize: 40
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}