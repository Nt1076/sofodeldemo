import 'package:flutter/material.dart';

class TransactionStatement extends StatelessWidget {
   const TransactionStatement({super.key});
  @override
  Widget build(BuildContext context) {
    // Replace this with your transaction data or fetch it from an API/database
    List<Transaction> transactions = [];

    if (transactions.isEmpty) {
      // If no records are found, display "Record not found" along with column names
      return ListView(
        
        children:[ DataTable(
  //          headingRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //   if (states.contains(MaterialState.hovered)) {
  //     return Colors.red;
  //   }
  //   return Colors.red;  // Use the default value.
  // }),
          columns:const <DataColumn>[
            DataColumn(label: Center(child: Text('Datetime')),numeric: false),
            DataColumn(label: Center(child: Text('Credit')),numeric: false),
            DataColumn(label: Center(child: Text('Debit')),numeric: false),
            DataColumn(label: Center(child: Text('Remark')),numeric: false),
          ],
          rows:const <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Wrap(children: [
                Text('Record not found')
              ],)),
              DataCell(Wrap(children: [
                Text('Record not found')
              ],)),
              DataCell(Wrap(children: [
                Text('Record not found')
              ],)),
              DataCell(Wrap(children: [
                Text('Record not found')
              ],)),
            ]),
          ],
        ),
        ]
      );
    }

    return ListView(
      children: [
        DataTable(
          
          columns:const <DataColumn>[
            DataColumn(label: Text('Datetime'),numeric: false),
            DataColumn(label: Text('Credit'),numeric: false),
            DataColumn(label: Text('Debit'),numeric: false),
            DataColumn(label: Text('Remark'),numeric: false),
          ],
          rows: transactions.map((transaction) {
            return DataRow(
              cells: <DataCell>[
                DataCell(Text(transaction.datetime)),
                DataCell(Text(transaction.credit.toString())),
                DataCell(Text(transaction.debit.toString())),
                DataCell(Text(transaction.remark)),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Transaction {
  final String datetime;
  final double credit;
  final double debit;
  final String remark;

  Transaction(this.datetime, this.credit, this.debit, this.remark);
}