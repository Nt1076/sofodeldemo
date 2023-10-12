import 'package:demo/pages/NavBar/NavBarComponent/List.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
          
            accountName: Text("Rajesh Rajput"),
             accountEmail: Text("74099059982"),
             currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset("assets/images/img.png"),),
             ),
             decoration: BoxDecoration(
              color: Colors.pink
             ),
             ),

             drawerList(
              icon: Icons.comment,
               title: "Bet History",
                subTitle: "MY Joined Context",
                onTap: () {
                  
                },
                ),

                 drawerList(
              icon: Icons.notes,
               title: "Results",
                subTitle: "View Game Results",
                onTap: () {
                  
                },
                ),

                 drawerList(
              icon: Icons.monetization_on,
               title: "WithDrawal",
                subTitle: "Amount WithDrawel Request",
                onTap: () {
                  
                },
                ),

                 drawerList(
              icon: Icons.history,
               title: "WithDrawel History",
                subTitle: "Withdrawel Request History",
                onTap: () {
                  
                },
                ),

                 drawerList(
              icon: Icons.file_copy_outlined,
               title: "Statement",
                subTitle: "My Transaction",
                onTap: () {
                  
                },
                ),

                 drawerList(
              icon: Icons.lock,
               title: "Change Password",
                subTitle: "Change App Password",
                onTap: () {
                  
                },
                ),

                 drawerList(
              icon: Icons.message_rounded,
               title: "WhatsApp",
                subTitle: "Contact With Us",
                onTap: () {
                  
                },
                ),
                 ListTile(
                  leading: Icon(Icons.logout,color: Colors.white,),
                  title: Text("Log Out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                 )
                
        ],
      ),
    );
  }
}