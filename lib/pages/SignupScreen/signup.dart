import 'package:demo/pages/HomePage/home.dart';
import 'package:demo/pages/SignupScreen/signUpComponent/textfield.dart';
import 'package:demo/pages/login%20page/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

class signUp extends StatelessWidget {
   signUp({super.key});
TextEditingController username = TextEditingController();

TextEditingController mobNumber = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController stateName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
      margin:const EdgeInsets.symmetric(horizontal: 20),

      child: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 60,),
            Center(child: Image.asset("assets/images/lord.png",height: 170,width: 170,)),
      
          const  SizedBox(height: 40,),
             Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                    decoration:const BoxDecoration(color: Colors.red,),
                    child:Marquee(text: "🙏🙏हे नाथ मैं तुम्हें कभी ना भूलू ",style:const TextStyle(color: Colors.white,fontSize: 20,)),
                 
                 ),
                 const SizedBox(height: 20,),
      
                 fieldText(text: "Username", controller:username,pass: false, ),
      
                  fieldText(text: "Mobile Number", controller:mobNumber ,pass: false,),
      
                   fieldText(text: "Password", controller:password,pass:true, ),
      
                    fieldText(text: "State Name", controller:stateName ,pass: false,),
                 
                 const  SizedBox(height: 20,),

                   GestureDetector(
                    onTap: () {
                      Get.to(const HomePage());
                    },
                     child: Container(
                      height: 55,
                      decoration: BoxDecoration(color:const Color.fromARGB(255, 81, 6, 241),borderRadius: BorderRadius.circular(30)),
                      child:const Center(child: Text("CREATE NEW ACCOUNT",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),),
                     ),
                   ),
                const SizedBox(height: 20,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 const Text("Already a member?",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic),),

                const  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
                      Get.to(Login());
                    },
                    child:const Text("Login",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16,fontStyle: FontStyle.italic),))
                 ],)



          ],
        ),
      ),


      ),
    );
  }
}