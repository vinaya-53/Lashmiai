import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/community.dart';
import 'package:lakshmiai/View/Widgets/txtfld.dart';

class chatbotpge extends StatefulWidget {
  const chatbotpge({super.key});

  @override
  State<chatbotpge> createState() => _chatbotpgeState();
}

class _chatbotpgeState extends State<chatbotpge> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
             Image.asset("assets/chatbotimage.png"),
        
        
             SizedBox(height:130),
        
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
        
                    hintText: "Ask me",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    
                   
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.white,
                    
                    suffixIcon: Icon(Icons.mic),
                    suffixIconColor: Colors.white,
        
                  ),
                ),
              ),
             // Icon(Icons.search)
              
              SizedBox(height:13),

             Row(
              children: [
                   SizedBox(width:10),
                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>comunity()));
                  },

                  child:Image.asset("assets/btn.png"),
                 ),

                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>comunity()));
                  },

                  child:Image.asset("assets/btnn.png"),
                 ),

                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>comunity()));
                  },

                  child:Image.asset("assets/btnnn.png"),
                 )

                 
              ],
             )
          ],
        ),
      ),
    );
  }
}