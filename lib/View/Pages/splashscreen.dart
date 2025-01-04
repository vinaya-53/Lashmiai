import 'package:flutter/material.dart';
import 'package:lakshmiai/View/Pages/loginpage.dart';
import 'package:flutter/services.dart';


class Splashscrn extends StatefulWidget {
  const Splashscrn({super.key});

  @override
  State<Splashscrn> createState() => _SplashscrnState();
}

class _SplashscrnState extends State<Splashscrn>  with SingleTickerProviderStateMixin {
  @override

  void initState() {
    super.initState();
    // Set the app to immersive mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Delay navigation to HomeScreen by 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const login(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // Restore the system UI when the widget is disposed
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height:90),
         // SizedBox(width:29),

           
              Image.asset("assets/logo1.png"),
             
           
             
             SizedBox(height: 67),
            Image.asset("assets/people.png"),
        ],
      ),
    );
  }
}