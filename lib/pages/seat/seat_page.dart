


import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/payment/payment_page.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_row.dart';
import 'package:flutter_train_app/pages/seat/Widgets/column_name.dart';


class SeatPage extends StatefulWidget{
  String depart;
  String arrive;
  SeatPage(this.depart, this.arrive);
  List<String> selectedSeat=[];
  
  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {

  void addSeat(seatNum){
    widget.selectedSeat.add(seatNum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('좌석 선택',
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            // 역 이름
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(widget.depart,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
                Icon(Icons.arrow_circle_right_outlined, size: 30,),
                Text(widget.arrive,
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
                Text('선택됨',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(width: 4,),
                Text('선택 안 됨',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary
                  ),
                ),
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
            // 좌석
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SeatsRow(1, addSeat),
                    SeatsRow(2, addSeat),
                    SeatsRow(3, addSeat),
                    SeatsRow(4, addSeat),
                    SeatsRow(5, addSeat),
                  ],
                ),
              ),
            ),
            // 예매하기 버튼
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return PaymentPage(depart: widget.depart, arrive: widget.arrive);
                  }));
                }, 
                child: Text('예매하기',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

