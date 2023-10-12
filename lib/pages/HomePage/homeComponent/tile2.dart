import 'package:flutter/material.dart';

class Tile2 extends StatelessWidget {
   final Color color1;
  final Color color2;
  final Color color3;
  final String text1;
  final String text2;
  final String text3;
  const Tile2({super.key, required this.color1, required this.color2, required this.color3, required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(children: [
              Expanded(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(color: color1,borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text(text1,style:const TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold))),
                ),
              ),
            const  SizedBox(width: 6,),
               Expanded(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(color: color2,borderRadius: BorderRadius.circular(10)),
                   child: Center(child: Text(text2,style:const TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold))),
                ),
              ),
             const SizedBox(width: 6,),
               Expanded(
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(color: color3,borderRadius: BorderRadius.circular(10)),
                   child: Center(child: Text(text3,style:const TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold))),
                ),
              )
        
        
             ],),
        );
  }
}