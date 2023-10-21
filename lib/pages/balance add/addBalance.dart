import 'package:demo/pages/HomePage/home.dart';
import 'package:demo/pages/balance%20add/addBalance%20Component/myCheckBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddBalance extends StatefulWidget {
  const AddBalance({super.key});

  @override
  State<AddBalance> createState() => _AddBalanceState();
}

class _AddBalanceState extends State<AddBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text("Add Balance To Wallet",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
             const SizedBox(height: 20,),
            Row(children: [
              Expanded(
                child: Container(
                  height: 26,
                   color: Colors.black,
                  child:const Center(child: Text("Balance:",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                ),
              ),
             const SizedBox(width: 30,),
                Expanded(
                child: Container(
                  height: 26,
                  color: Colors.black,
                  child:const Center(child: Text("₹ 0",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                ),
              )
            ],),

           const  SizedBox(height: 30,),

           const Text("₹ Add Amount",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
             Padding(
      padding: const EdgeInsets.symmetric(horizontal:22),
      child: TextField(
      
                 
                     style:const TextStyle(height:1),
                    
                     decoration: InputDecoration(
                     
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0).copyWith(topLeft:const Radius.circular(6),topRight:const Radius.circular(6),bottomLeft:const Radius.circular(6),bottomRight:const Radius.circular(6),  ),
                      borderSide:const BorderSide(color: Colors.black)
                    ),
                    focusedBorder:const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.black)
                    ),
                   
                   
                   
                    hintText: "Enter the amount",
                    hintStyle:const TextStyle(color: Colors.grey)
                    
                    ),
                  
                  ),

    ),
      const SizedBox(height: 30,),

        const MycheckBox(),
           

           
           const  SizedBox(height: 30,),


             GestureDetector(
              onTap: () {
               Get.to(const HomePage());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:22.0),
                child: Container(
                  height: 45,
                  color: Colors.red,
                  child:const Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}