
import 'package:flutter/material.dart';

class SeatsButton extends StatefulWidget {
  String seatNum;
  SeatsButton(this.seatNum);

  @override
  State<SeatsButton> createState() => _SeatsButtonState();
}

class _SeatsButtonState extends State<SeatsButton>{
  bool isPressed=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isPressed ? Theme.of(context).highlightColor : Theme.of(context).colorScheme.primary,
      ),
      child: TextButton(
        onPressed: (){
          if(isPressed){
            setState(() {
              isPressed=false;
            });
          }
          else{
            setState(() {
              isPressed=true;
            });
          }
        },
        child: 
          Text('')
        ,
      ),
    );
  }
}