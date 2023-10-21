import 'package:flutter/material.dart';

class MycheckBox extends StatefulWidget {
  const MycheckBox({super.key});

  @override
  State<MycheckBox> createState() => _MycheckBoxState();
}

class _MycheckBoxState extends State<MycheckBox> {
  bool isCkecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(value: isCkecked,
               onChanged: (bool? newValue){
               setState(() {
                  isCkecked = newValue!;
               });
               }),
              const Text("Pay via PhonePay/ GooglePay/ BHIM/ \nPaytm or Debit/Credit card",
               overflow: TextOverflow.ellipsis,
               
               maxLines: 4,
                 style: TextStyle(fontSize: 14,color: Colors.green),
               )
            ],
          ),
          const  SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:22.0),
                child: GestureDetector(
                  onTap: () => isCkecked?(){}:null,
                  child: Container(
                    height: 45,
                    color:isCkecked? Color.fromARGB(255, 4, 109, 88):Colors.grey,
                    child:const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}