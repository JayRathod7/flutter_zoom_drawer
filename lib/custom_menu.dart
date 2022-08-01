import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget{
 final String? title;
 final IconData? icon;
 final VoidCallback? onTap;

 const CustomMenu({required this.title,required this.icon ,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 10,bottom: 10,left: 12,right: 12),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 16),
            Text(title!,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );  }


}