

import 'package:flutter/material.dart';


class PlayJodi extends StatefulWidget {
  const PlayJodi({super.key});

  @override
  State<PlayJodi> createState() => _PlayHarupState();
}

class _PlayHarupState extends State<PlayJodi> {
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
      backgroundColor:const Color.fromARGB(255, 255, 184, 5),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text("Play Jodi",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

     body: Container(
      margin:const EdgeInsets.symmetric(horizontal: 16),
       child: Column(
         children: [
         const SizedBox(height: 10,),
           Row(children: [
                Expanded(
                  child: Container(
                    height: 22,
                     color: Colors.black,
                    child:const Center(child: Text("Balance:",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                  ),
                ),
                
                const SizedBox(width: 40,),
                  Expanded(
                  child: Container(
                    height: 22,
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
              const SizedBox(height: 10,),
           Expanded(
             child: GridView.builder(
             gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 5, // Number of columns
             ),
             itemCount: 100, // Number of items
             itemBuilder: (BuildContext context, int index) {
               return Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 20,
                     width:65,
                     color: Colors.black,
                     child: Center(
                       child: Text(
                         index.toString(), // Display text or data here
                         style:const TextStyle(fontSize: 16,color: Colors.white),
                       ),
                     ),
                   ),
                 const  SizedBox(height: 4), // Add spacing between text and textfield
                   Expanded(
                     child: TextFormField(
                       decoration:const InputDecoration(
                        
                         enabledBorder: OutlineInputBorder(
                         
                         borderSide: BorderSide(color: Colors.black)
                       ),
                       focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                       ),)
                     ),
                     
                   ),
                  const SizedBox(height: 8,)
                 ],
               );
             },
               ),
           ),

           const  SizedBox(height: 10,),
              Row(children: [
              Expanded(
                child: Container(
                  height: 22,
                   color: Colors.black,
                  child:const Center(child: Text("Total",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                ),
              ),
           const   SizedBox(width: 30,),
                Expanded(
                child: Container(
                  height: 22,
                  color: Colors.black,
                  child:const Center(child: Text("₹ 0",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),)),
                ),
              )
            ],),

          const  SizedBox(height: 10,),
           
              GestureDetector(
              onTap: () {
                
              },
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  height: 40,
                  color:const Color.fromARGB(255, 4, 109, 88),
                  child:const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
         ],
       ),
     ),
    );
  }
}

