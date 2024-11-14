import 'package:flutter/material.dart';
import 'package:flutter_train_app/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('기차 예매'),
      ),
      body: Column(
        children: [
          SizedBox(height: 200),
          Center(
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).highlightColor,
              ),
            ),
          )
        ],
      ),
    );
  }
  
}