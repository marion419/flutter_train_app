import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/Widgets/seats_button.dart';


class SeatsRow extends StatelessWidget{
  bool isPressed=false;
  int rowNum;

  SeatsRow(this.rowNum);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SeatsButton(),
        SizedBox(width: 4,),
        SeatsButton(),
        SizedBox(
          width: 50,
          height: 50,
          child: 
          Text('$rowNum',
            style: TextStyle(
              fontSize: 18
            ),
          ),
        ),
        SeatsButton(),
        SizedBox(width: 4,),
        SeatsButton(),
      ],
    );
  }
}