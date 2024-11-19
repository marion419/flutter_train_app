


import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget{
  String depart;
  String arrive;

  PaymentPage({required this.depart, required this.arrive});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary,
              ),
              width: double.infinity,
              height: 200,
              child: Row(
                children: [
                  Text(depart),
                  Text(arrive)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}