import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;

  Result (this.resultScore);

  //String get resultPhrase {
  //  return
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Obrigado por responder!', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), textAlign: TextAlign.center
      ),
    );
  }
}
