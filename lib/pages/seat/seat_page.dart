


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/payment/payment_page.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_row.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_button.dart';
import 'package:flutter_train_app/pages/seat/Widgets/column_name.dart';


class SeatPage extends StatefulWidget{
  String depart;
  String arrive;
  SeatPage(this.depart, this.arrive);
  List<String> selectedSeat=[];
  int seatCount=0;
  
  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  bool isPressed=true;
  @override
  Widget build(BuildContext context) {
    // CupertinoAlertDialog(
    //   title: Text('예매 하시겠습니까?'),
    //   content: Text('좌석 :'),
    //   actions: <CupertinoDialogAction>[
    //     CupertinoDialogAction(
    //       // isDefaultAction
    //       // 작업의 기본 값
    //       // 텍스트 색상을 파란색으로, 굵게 표시
    //       isDefaultAction: true,
    //       onPressed: () => Navigator.pop(context),
    //       child: const Text('No'),
    //     ),
    //     CupertinoDialogAction(
    //       // isDestructiveAction
    //       // 작업 수행, 삭제 및 전환과 같은 파괴적인 작업
    //       // 텍스트 색상을 빨간색으로 지정
    //       isDestructiveAction: true,
    //       onPressed: () => Navigator.pop(context),
    //       child: const Text('Yes'),
    //     ),
    //   ],
    // );

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
            // 좌석 스크롤뷰
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SeatsRow(1, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(2, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(3, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(4, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(5, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(6, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(7, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(8, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(9, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(10, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(11, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(12, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(13, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(14, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(15, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(16, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(17, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(18, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(19, widget.selectedSeat),
                    SizedBox(height: 4,),
                    SeatsRow(20, widget.selectedSeat),
                    SizedBox(height: 4,),
                  ],
                ),
              ),
            ),
            // 예매하기 버튼
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(widget.selectedSeat.isNotEmpty){
                    showCupertinoDialog(context: context, 
                      barrierDismissible: true,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text('예매 하시겠습니까?'),
                        content: widget.selectedSeat.length==1 ? Text('좌석 : ${widget.selectedSeat[0]}') 
                        : Text('좌석 : ${widget.selectedSeat[0]} 외 ${widget.selectedSeat.length-1}') ,
                        actions: <CupertinoDialogAction>[
                          CupertinoDialogAction(
                            isDestructiveAction: true,
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('취소')
                          ),
                          CupertinoDialogAction(
                            isDefaultAction: true,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return PaymentPage(depart: widget.depart, arrive: widget.arrive, selectedSeat: widget.selectedSeat,);
                              }));
                            },
                            child: Text('확인',
                              style: TextStyle(
                                color: Colors.blue
                              ),
                            )
                          )
                        ],
                      )
                    );
                  }
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

