import 'package:flutter/material.dart';

class drawerList extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final Function()? onTap;
  const drawerList({super.key, required this.icon, required this.title, required this.subTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.white,),
      title: Text(title,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      subtitle: Text(subTitle,style:const TextStyle(color: Colors.white54),),
      onTap: onTap,
    );
  }
}