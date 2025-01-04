import 'package:flutter/material.dart';

class Apptheme
{
    static final thememode=ThemeData(
       scaffoldBackgroundColor: Color.fromARGB(255, 8, 53, 9),
      inputDecorationTheme: InputDecorationTheme(
        
              

        enabledBorder: OutlineInputBorder(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
             color:Color.fromARGB(202, 182, 166, 19),
            width: 3,
          )
        ),

         focusedBorder: OutlineInputBorder(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
             color:Color.fromARGB(202, 182, 166, 19),
            width: 3,
          )
        )
      )
    );
}