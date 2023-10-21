import 'dart:ffi';

import 'package:flutter/material.dart';

class monthlyResult extends StatelessWidget {
  const monthlyResult({super.key});
   List<DateTime> getDatesForCurrentMonth() {
    final now = DateTime.now();
    final firstDayOfMonth = DateTime(now.year, now.month, 1);
    final lastDayOfMonth = DateTime(now.year, now.month + 1, 0);

    List<DateTime> dates = [];
    for (var i = firstDayOfMonth; i.isBefore(lastDayOfMonth); i = i.add(const Duration(days: 1))) {
      dates.add(i);
    }

    return dates;
  }

  @override
  Widget build(BuildContext context) {
     List<DateTime> dates = getDatesForCurrentMonth();

    return Scaffold(
      backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 48, 136, 203),
          title:const Text('Monthly Result',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        body: Container(
          margin:const EdgeInsets.symmetric(horizontal: 11),
          child: SingleChildScrollView(
            child: Column(
            
              children: [
               const SizedBox(height: 30,),
                Row(children: [
          
                
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("Date",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("DS",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("DL",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("SG",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("FD",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("GBD",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  Expanded(child: Container(
                     decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                     child:const Center(child: Text("GALI",style: TextStyle(color: Colors.white),),),
                  )
                  
                  
                  ),
                  
                ],),
          
           const SizedBox(height: 24,),
          
               
                 Container(
                  
                  height: MediaQuery.of(context).size.height,
                 // width: MediaQuery.of(context).size.width,
           
                   
                  
                 child:  ListView.builder(
                    physics:const ScrollPhysics(),
                       itemCount: dates.length,
                       itemBuilder: (context, index) {
                        
                         return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                           children: [
                             Container(
                              
                               //width: 40,
                              //height: 20,
                                 
                                 decoration: BoxDecoration(border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(6),),
                                 child: Text(
                                  
                                  "${dates[index].year}/${dates[index].month}/${dates[index].day}",style:const TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                             
                             Expanded(
                               child: Container(
                                                  decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                                                  child:const Center(child: Text("14",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                               ),
                             ),
                                          Expanded(child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                                            child:const Center(child: Text("45",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                   )
                                   
                                   
                                   ),
                                          Expanded(child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                                            child:const Center(child: Text("95",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                   )
                                   
                                   
                                   ),
                                          Expanded(child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                                            child:const Center(child: Text("36",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                   )
                                   
                                   
                                   ),
                                          Expanded(child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                                            child:const Center(child: Text("45",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                   )
                                   
                                   
                                   ),
                                          Expanded(child: Container(
                                            decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(6)),
                                            child:const Center(child: Text("78",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                   )
                                   
                                   
                                   ),
                                   
                           ],
                         );
                       },
                     ),
                 ),
          
              
               
              ],
            ),
          ),
          
        ),
      
    );
  }
}

 