


import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_row.dart';
import 'package:flutter_train_app/pages/seat/Widgets/column_name.dart';


class SeatPage extends StatefulWidget{
  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('좌석 선택'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 역 이름
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('출발역',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).highlightColor,
                ),
              ),
              Icon(Icons.arrow_circle_right_outlined, size: 30,),
              Text('도착역',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).highlightColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          // 좌석 상태 박스
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).highlightColor,
                ),
              ),
              SizedBox(width: 4,),
              Text('선택됨',),
              SizedBox(width: 20,),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300]!,
                ),
              ),
              SizedBox(width: 4,),
              Text('선택 안 됨'),
            ],
          ),
          // 행번호
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColumnName('A'),
                SizedBox(width: 4,),
                ColumnName('B'),
                SizedBox(width: 50, height: 50,),
                ColumnName('C'),
                SizedBox(width: 4,),
                ColumnName('D'),
              ],
            ),
          ),
          // 좌석 리스트뷰
          Column(
            children: [
              SeatsRow(1),
              SeatsRow(2),
              SeatsRow(3),
              SeatsRow(4),
              SeatsRow(5),
            ],
          )
          // 예매하기 버튼

        ],
      ),
    );
  }
}

