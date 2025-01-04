import 'package:flutter/material.dart';

class txfldd extends StatelessWidget {
  final String hnttxt;
  const txfldd(
    {
      super.key,
      required this.hnttxt,
      
      });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
      
         style: TextStyle(
          color: Colors.white,
         ),



        decoration: InputDecoration(


              hintText: hnttxt,
              hintStyle:TextStyle(
                color: Colors.white,
              ),
              
              

        ),
      ),
    );
  }
}