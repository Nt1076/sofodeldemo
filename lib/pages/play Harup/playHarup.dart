import 'package:demo/pages/HomePage/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayHarup extends StatefulWidget {
  const PlayHarup({super.key});

  @override
  State<PlayHarup> createState() => _PlayHarupState();
}

class _PlayHarupState extends State<PlayHarup> {
   List dropDownListData = [
    {"title": "Casinos", "value": "1"},
    {"title": "Poker", "value": "2"},
    {"title": "Keno", "value": "3"},
    {"title": "22bet", "value": "4"},
    {"title": "Bet365", "value": "5"},
    {"title": "Ignition", "value": "6"},
    {"title": "Bovada", "value": "7"},
  ];
  String defaultValue = "";
  String secondDropDown = "";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text("Play Harup",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

     body: Container(
      margin:const EdgeInsets.symmetric(horizontal: 16),
       child: SingleChildScrollView(
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
            const  SizedBox(width: 30,),
                Expanded(
                child: Container(
                  height: 26,
                  color: Colors.black,
                  child:const Center(child: Text("₹ 0",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                ),
              )
            ],),
       
           const SizedBox(height: 10,),
       
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
                              "--Please Select Game--",
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
       
            const SizedBox(height: 14,),
            const Row(children: [
              Expanded(child: Center(child: Text("Andar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))),
               Expanded(child: Center(child: Text("Bahar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))),
              
             ],),
             
             Row(
               children: [
                
                 Expanded(child: TextFieldList()),
                 Expanded(child: TextFieldList())
               ],
             ),
           const  SizedBox(height: 10,),
              Row(children: [
              Expanded(
                child: Container(
                  height: 26,
                   color: Colors.black,
                  child:const Center(child: Text("Total",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
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

           const SizedBox(height: 10,),

            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                height: 45,
                color: Colors.black,
                child:const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
            ),
           const  SizedBox(height: 20,),


             GestureDetector(
              onTap: () {
                Get.to(const HomePage());
              },
              child: Container(
                height: 45,
                color: Colors.red,
                child:const Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
            ),

         const SizedBox(height: 10,),

          ],
          
         ),
       ),
     ),
    );
  }
}

class TextFieldList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> textFields = [];

    for (int i = 0; i < 10; i++) {
      textFields.add(
        Row(
          children: [
            Text(i.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
           const Expanded(
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: TextField(
                 // decoration: InputDecoration(labelText: 'Enter text here'),
                 
                ),
              ),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: textFields,
      ),
    );
  }
}