import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';

//stateless pq a pagina do splash nao muda
class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2))
    .then((_) => Navigator.pushReplacement(//replace para nao poder voltar p splash depois que inicia o app
      context, MaterialPageRoute(
        builder: (context) => HomePage()),
        ));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
          ),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
