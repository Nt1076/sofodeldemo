import 'package:flutter/material.dart';

class fieldText extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool pass;
  
  const fieldText({super.key, required this.text, required this.controller, required this.pass});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:14.0),
      child: TextField(
        obscureText: pass,
                 controller: controller,
                     style:const TextStyle(height:1),
                    
                     decoration: InputDecoration(
                     
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0).copyWith(topLeft:Radius.circular(10),topRight: Radius.circular(10) ),
                      borderSide:const BorderSide(color: Color.fromARGB(255, 233, 212, 20))
                    ),
                    focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Color.fromARGB(255, 233, 212, 20))
                    ),
                   
                   filled: true,
                   fillColor: Colors.grey[100],
                    hintText: text,
                    hintStyle: TextStyle(color: Colors.pinkAccent)
                    
                    ),
                  
                  ),
    );
  }
}