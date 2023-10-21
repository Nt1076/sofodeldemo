
import 'package:demo/pages/SignupScreen/signUpComponent/textfield.dart';
import 'package:demo/pages/login%20page/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});
//TextEditingController Username = TextEditingController();

TextEditingController mobNumber = TextEditingController();
TextEditingController confirmPassword = TextEditingController();
TextEditingController newPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
      margin:const EdgeInsets.symmetric(horizontal: 20),

      child: SingleChildScrollView(
        child: Column(
          children: [
          const  SizedBox(height: 50,),
            Center(child: Image.asset("assets/images/lord.png",height: 150,width: 150,)),
      
           const SizedBox(height: 20,),
             Container(
                  width: MediaQuery.of(context).size.width,
                  height: 26,
                    decoration:const BoxDecoration(color: Colors.red,),
                    child: Marquee(text: "🙏🙏हे नाथ मैं तुम्हें कभी ना भूलू ",style:const TextStyle(color: Colors.white,fontSize: 18,)),
                 
                 ),
                const  SizedBox(height: 20,),

               const   Text(".....Reset Your Password.....",style: TextStyle(color: Colors.pinkAccent,fontStyle: FontStyle.italic,fontSize: 18,fontWeight: FontWeight.bold),),

                 const  SizedBox(height: 20,),
      
               //  fieldText(text: "Username", controller:Username,pass: false, ),
      
                  fieldText(text: "Mobile Number", controller:mobNumber ,pass: false,),
      
                   fieldText(text: "New Password", controller:newPassword,pass:true, ),

                    fieldText(text: "Confirm Password", controller:confirmPassword,pass:true, ),
      
                  //  fieldText(text: "State Name", controller:stateName ,pass: false,),
                 
                 const  SizedBox(height: 20,),

                   GestureDetector(
                    onTap: () {
                      Get.to(Login());
                    },
                     child: Container(
                      height: 55,
                      decoration: BoxDecoration(color:const Color.fromARGB(255, 81, 6, 241),borderRadius: BorderRadius.circular(30)),
                      child:const Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 18),),),
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