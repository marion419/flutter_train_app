import 'package:flutter/material.dart';

class ColumnName extends StatelessWidget {
  ColumnName(this.name);

  String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name,
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.tertiary
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}