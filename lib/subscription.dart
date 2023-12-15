import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SUBSCRIPTION",
          style: TextStyle(fontFamily: 'Cinzel', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF110F0C),
      ),
      body: Center(
          child: Text(
        "Subscription is not available",
        style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Lora'),
      )),
    );
  }
}
