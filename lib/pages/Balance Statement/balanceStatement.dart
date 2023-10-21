import 'package:demo/pages/Balance%20Statement/balance%20Statement%20component/statement.dart';
import 'package:flutter/material.dart';

class balanceStatement extends StatefulWidget {
  const balanceStatement({super.key});

  @override
  State<balanceStatement> createState() => _balanceStatementState();
}

class _balanceStatementState extends State<balanceStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("All Transaction Statement",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),

      ),
      body: Container(
        margin:const EdgeInsets.only(left: 10,right: 16),
        child:const TransactionStatement()),
    );
  }
}