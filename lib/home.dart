import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:whatsappclone/whatsapp.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Whatsapp(),));
    });
    return Scaffold(body: Center(child:Lottie.asset("assets/whatsapp.json") ,),);
  }
}