

import 'package:demo/pages/Balance%20Statement/balanceStatement.dart';
import 'package:demo/pages/HomePage/homeComponent/tile1.dart';
import 'package:demo/pages/HomePage/homeComponent/tile2.dart';
import 'package:demo/pages/MonthlyResult/monthlyResult.dart';
import 'package:demo/pages/NavBar/navbar.dart';
import 'package:demo/pages/balance%20add/addBalance.dart';
import 'package:demo/pages/play%20Harup/playHarup.dart';
import 'package:demo/pages/play%20jodi/playJodi.dart';
import 'package:demo/pages/withDraw%20Request/withdrawRequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer:const NavBar(),
      backgroundColor:  Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text("Balaji Satta King",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),) ,
      ),
      body: Container(
        
        margin:const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics:const ScrollPhysics(),
          child: SafeArea(
            child: Column(
              
              children: [
               const SizedBox(height: 10,),
               SizedBox(
                height: 20,
                child: Marquee(text: "JIGAR KHAIWAL PLAY ONLINE ",style:const TextStyle(color: Colors.red,fontSize: 14,),)),
            
              
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
                  child:Marquee(text: "विस्वास के साथ बिंदास प्ले करे यहाँ हर चीज़ सेफ है ",style:const TextStyle(color: Colors.white,fontSize: 14,)),
               
               ),
             const SizedBox(height: 20,),
                   
              Tile(color1: Colors.amber, text1: "PLAY HARUP",onTap1: () {
                Get.to(const PlayHarup());
              }, text2: "PLAY JODI", color2: Colors.orange,onTap2: () {
                Get.to(const PlayJodi());
              },),
              Tile(color1: Colors.blue, text1: "HARUS CROSS",onTap1: () {
                
              }, text2: "BETWEEN PLAY", color2: Colors.deepPurpleAccent,onTap2: () {
                
              },),
          
              Tile(color1: Colors.pink, text1: "WITHDRAW REQUEST",onTap1: () {
                
              }, text2: "NOTICE BOARD", color2: Colors.green,onTap2: () {
                
              },),

              Tile(color1: Colors.amber, text1: "MONTH RESULT",onTap1: () {
                Get.to(const monthlyResult());
              }, text2: "CURRENT RATE", color2: Colors.blue,onTap2: () {
                
              },),
          
              Tile(color1: Colors.green, text1: "GAME HISTORY",onTap1: () {
                
              }, text2: "CURRENT RESULT", color2: Colors.red,onTap2: () {
                
              },),
              Tile(color1: Colors.blueAccent, text1: "BALANCE ADD",onTap1: () {
                Get.to(const AddBalance());
              }, text2: "BALANCE WITHDRAW", color2: Colors.orange,onTap2: () {
                 Get.to(const WithdrawRequest());
              },),
          
              Tile(color1: Colors.deepPurple, text1: "BALANCE STATEMENT",onTap1: () {
                Get.to(const balanceStatement());
              }, text2: "PASSWORD CHANGE", color2: Colors.green,onTap2: () {
                
              },),
          
            const  Tile2(color1: Colors.amber, color2: Color.fromARGB(255, 252, 129, 7), color3: Colors.deepPurple, text1: "WHATSAPP", text2: "WHATS2 APP", text3: "GAME WIN"),
              Tile(color1: Colors.blueAccent, text1: "EXIT",onTap1: () {
                
              }, text2: "LOG OUT", color2: Colors.pink,
              onTap2: () {
                
              },),
          
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}