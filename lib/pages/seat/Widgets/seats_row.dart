import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_button.dart';


class SeatsRow extends StatelessWidget{
  bool isPressed=false;
  int rowNum;
  List<String> selectedSeat;

  SeatsRow(this.rowNum, this.selectedSeat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SeatsButton('$rowNum-A', selectedSeat),
          SizedBox(width: 4,),
          SeatsButton('$rowNum-B', selectedSeat),
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
          SeatsButton('$rowNum-C', selectedSeat),
          SizedBox(width: 4,),
          SeatsButton('$rowNum-D', selectedSeat),
        ],
      ),
    );
  }
}