

import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget{
  StationListPage(this.direction);

  String direction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(direction),
        centerTitle: true,
      ),
    );
  }
}