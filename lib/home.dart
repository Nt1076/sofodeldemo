

import 'package:demo/component/list.dart';
import 'package:demo/component/tile2.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:  Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Padding(
          padding:  EdgeInsets.only(left:28.0),
          child: Text("Balaji Satta King",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        ) ,
      ),
      body: Container(
        
        margin:const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
             const SizedBox(height: 10,),

            const Center(child: Text("JIGAR KHAIWAL PLAY ONLINE JIGAR KHAIWAL",style: TextStyle(color: Colors.red,fontSize: 14,),)),
            
            const SizedBox(height: 10,),
             Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(20)),
              child:const Padding(
                padding: EdgeInsets.symmetric(horizontal:50.0,vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Deepak",style: TextStyle(color: Colors.white,fontSize: 14,),),
                    Text("1530",style: TextStyle(color: Colors.white,fontSize: 14,),)
                  ],
                ),
              ),
             ),
             const SizedBox(height: 12,),
             
             Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
                decoration:const BoxDecoration(color: Colors.red,),
                child:const Center(child: Text("विस्वास के साथ बिंदास प्ले करे यहाँ हर चीज़ सेफ है ",style: TextStyle(color: Colors.white,fontSize: 14,))),
        
             ),
           const SizedBox(height: 20,),
         
          const  Tile(color1: Colors.amber, text1: "PLAY HARUP", text2: "PLAY JODI", color2: Colors.orange),
           const Tile(color1: Colors.blue, text1: "HARUS CROSS", text2: "BETWEEN PLAY", color2: Colors.deepPurpleAccent),

           const Tile(color1: Colors.pink, text1: "WITHDRAW REQUEST", text2: "NOTICE BOARD", color2: Colors.green),
           const Tile(color1: Colors.amber, text1: "MONTH RESULT", text2: "CURRENT RATE", color2: Colors.blue),

           const Tile(color1: Colors.green, text1: "GAME HISTORY", text2: "CURRENT RESULT", color2: Colors.red),
           const Tile(color1: Colors.blueAccent, text1: "BALANCE ADD", text2: "BALANCE WITHDRAW", color2: Colors.orange),

           const Tile(color1: Colors.deepPurple, text1: "BALANCE STATEMENT", text2: "PASSWORD CHANGE", color2: Colors.green),

           const Tile2(color1: Colors.amber, color2: Color.fromARGB(255, 252, 129, 7), color3: Colors.deepPurple, text1: "WHATSAPP", text2: "WHATS2 APP", text3: "GAME WIN"),
           const Tile(color1: Colors.blueAccent, text1: "EXIT", text2: "LOG OUT", color2: Colors.pink),

            
            ],
          ),
        ),
      ),
    );
  }
}