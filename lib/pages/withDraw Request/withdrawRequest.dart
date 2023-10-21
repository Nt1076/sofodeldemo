import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../HomePage/home.dart';

class WithdrawRequest extends StatefulWidget {
  const WithdrawRequest({super.key});

  @override
  State<WithdrawRequest> createState() => _WithdrawRequestState();
}

class _WithdrawRequestState extends State<WithdrawRequest> {
   List dropDownListData = [
    {"title": "PhonePay", "value": "1"},
    {"title": "GooglePay", "value": "2"},
    {"title": "Paytm", "value": "3"},
    {"title": "CreditCard", "value": "4"},
    {"title": "DebitCard", "value": "5"},
    {"title": "BHIM", "value": "6"},
    {"title": "AmazonPay", "value": "7"},
  ];
   String defaultValue = "";
  String secondDropDown = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 255, 152, 7),
        title:const Text("Withdrawel  Request",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    
     body: Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                
                children: [
               const   SizedBox(height: 20,),
                   Container(
                     height: 26,
                      color:const Color.fromARGB(255, 6, 139, 93),
                     child:const Center(child: Text("WithDrawel Balance Time",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                   ),
      
                   const  SizedBox(height: 14,),
                   Container(
                     height: 26,
                      color: const Color.fromARGB(255, 6, 139, 93),
                     child:const Center(child: Text("9:00 AM  to  01:00 PM",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                   ),
      
                 const   SizedBox(height: 20,),
              Row(children: [
                Expanded(
                  child: Container(
                    height: 26,
                     color: Colors.black,
                    child:const Center(child: Text("Balance:",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                  ),
                ),
              const  SizedBox(width: 30,),
                  Expanded(
                  child: Container(
                    height: 26,
                    color: Colors.black,
                    child:const Center(child: Text("₹ 0",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                  ),
                )
              ],),
      
              const   SizedBox(height: 30,),
         
               Container(
                padding:const EdgeInsets.symmetric(horizontal: 40),
                height: 50,
                color: Colors.black26,
                 child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        isDense: true,
                        value: defaultValue,
                        isExpanded: true,
                        menuMaxHeight: 350,
                        focusColor: Colors.black,
                        items: [
                          const DropdownMenuItem(
                              child: Text(
                                "--Withdrawel With--",
                              ),
                              value: ""),
                          ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                            return DropdownMenuItem(
                                child: Text(data['title']), value: data['value']);
                          }).toList(),
                        ],
                        onChanged: (value) {
                          //print("selected Value $value");
                          setState(() {
                            defaultValue = value!;
                          });
                        }),
                  ),
               ),
      
               const  SizedBox(height: 30,),
      
             const Text("₹ Withdrawel Amount / Redeem Point:",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
               const   SizedBox(height: 10,),
      
                  TextField(
                  
                             
                                 style:const TextStyle(height:1),
                                
                                 decoration: InputDecoration(
                                 
                                  enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0).copyWith(topLeft:const Radius.circular(6),topRight:const Radius.circular(6),bottomLeft:const Radius.circular(6),bottomRight:const Radius.circular(6),  ),
                                  borderSide:const BorderSide(color: Colors.black)
                                ),
                                focusedBorder: const OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.black)
                                ),
                               
                               
                               
                                hintText: "Enter the amount",
                                hintStyle:const TextStyle(color: Colors.grey)
                                
                                ),
                              
                              ),
      
                              const  SizedBox(height: 20,),
      
            const  Text("Mobile Number:",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 10,),
      
                  TextField(
                  
                             
                                 style:const TextStyle(height:1),
                                
                                 decoration: InputDecoration(
                                 
                                  enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0).copyWith(topLeft:const Radius.circular(6),topRight:const Radius.circular(6),bottomLeft:const Radius.circular(6),bottomRight:const Radius.circular(6),  ),
                                  borderSide:const BorderSide(color: Colors.black)
                                ),
                                focusedBorder:const OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.black)
                                ),
                               
                               
                               
                                hintText: "Mobile Number",
                                hintStyle:const TextStyle(color: Colors.grey)
                                
                                ),
                              
                              ),
                ],
              ),
            ),
      
            
             const SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                 
                },
                child: Container(
                  height: 45,
                  color: const Color.fromARGB(255, 6, 139, 93),
                  child:const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              ),
      
             const SizedBox(height: 30,),
      
                GestureDetector(
                onTap: () {
                  Get.to(const HomePage());
                },
                child: Container(
                  height: 45,
                  color: Colors.grey,
                  child:const Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              ),
          ],
        ),
      ),
     ),

    );
  }
}