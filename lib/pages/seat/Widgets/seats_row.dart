import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_button.dart';


class SeatsRow extends StatelessWidget{
  bool isPressed=false;
  int rowNum;
  void Function(String seatNum) addSeat;

  SeatsRow(this.rowNum, this.addSeat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SeatsButton('A$rowNum'),
          SizedBox(width: 4,),
          SeatsButton('B$rowNum'),
          SizedBox(
            width: 50,
            height: 50,
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$rowNum',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.tertiary
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SeatsButton('C$rowNum'),
          SizedBox(width: 4,),
          SeatsButton('D$rowNum'),
        ],
      ),
    );
  }
}