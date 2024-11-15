import 'package:flutter/material.dart';

class StationSelect extends StatelessWidget{

  StationSelect(this.station);

  String station;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!)
        )
      ),
      child: 
      TextButton(
        onPressed: (){
          Navigator.pop(context, station);
        },
        child: Text('   $station',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}