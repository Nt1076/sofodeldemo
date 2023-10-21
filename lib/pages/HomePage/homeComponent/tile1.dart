import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String text1;
  final String text2;
  final Function() onTap1;
  final Function() onTap2;
  

  const Tile({super.key, required this.color1, required this.text1, required this.text2, required this.color2, required this.onTap1, required this.onTap2});

  @override
  Widget build(BuildContext context) {
   
    return 
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap:onTap1 ,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(color: color1,borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text(text1,style:const TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold))),
                  ),
                ),
              ),
             const SizedBox(width: 6,),
               Expanded(
                child: GestureDetector(
                  onTap: onTap2,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(color: color2,borderRadius: BorderRadius.circular(10)),
                     child: Center(child: Text(text2,style:const TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold))),
                  ),
                ),
              )
        
             ],),
        );
    
  }
}