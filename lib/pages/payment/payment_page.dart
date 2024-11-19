


import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget{
  List<String> items =
      ["수서","동탄","평택지제","천안아산","오송","대전","김천구미","동대구","경주","울산","부산"];

  List<String> selectedSeat=[];
  String depart;
  String arrive;
  int cost=0;

  PaymentPage({required this.depart, required this.arrive, required this.selectedSeat}){
    cost=15000+1000*(items.indexOf(depart)-items.indexOf(arrive)).abs();
    cost=cost*selectedSeat.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('결제',
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 출발역, 도착역 표시 박스
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary,
              ),
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // 출발역
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('출발역',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(depart,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 35
                            ),
                          )
                        ],
                      ),
                      // 세로 구분선
                      Container(
                        color: Colors.grey[400],
                        width: 2,
                        height: 50,
                      ),
                      // 도착역
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('도착역',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(arrive,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 35
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    child: selectedSeat.length==1 ? 
                      Text('좌석 : ${selectedSeat[0]}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ) 
                      : Text('좌석 : ${selectedSeat[0]} 외 ${selectedSeat.length-1}석',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ) ,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            // 결제 버튼
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                }, 
                child: 
                  Text('$cost원 결제하기',
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