import 'package:flutter/material.dart';


class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Number of columns
        ),
        itemCount: 100, // Number of items
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Column(
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
               const SizedBox(height: 8), // Add spacing between text and textfield
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
            ),
          );
        },
          ),
      ),
    );
  }
}
