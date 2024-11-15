import 'package:flutter/material.dart';

class Seats extends StatefulWidget {
  const Seats({super.key});

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats>{
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isPressed ? Theme.of(context).highlightColor : Colors.grey[300]!
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
        ),
        SizedBox(width: 4,),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}