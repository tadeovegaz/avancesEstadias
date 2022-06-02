import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pruebas/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';


class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Rutas',
          body: 'Aquí podrás ver todas las rutas del transporte público de Salamanca Guanajuato, los detalles de sus horarios y las paradas más cercanas a ti.',
          image: Image.asset(
            "assets/cultural.png",
            height: 280,
            width: 300,
            fit: BoxFit.fill,
          ),
          decoration: getPageDecoration(),
        ),
         PageViewModel(
          title: 'Ruta cultural',
          body: 'Con la ruta cultural podras conocer los puntos mas importantes de la ciudad, conocer salamanca nunca fue tan facil.',
          image: Image.asset(
            "assets/cultural.png",
            height: 280,
            width: 300,
            fit: BoxFit.fill,
          ),
          decoration: getPageDecoration(),
        ),
         PageViewModel(
          title: 'Publicidad local',
          body: 'Publicitar un negocio para los salmantinos no será un problema, con Xidoo Rutas el comerciante podrá dar a conocer su negocio.',
          image: Image.asset(
            "assets/publicidad.png",
            height: 280,
            width: 350,
            fit: BoxFit.fill,
          ),          decoration: getPageDecoration(),
        ),
         PageViewModel(
          title: 'Anuncios Oficiales',
          body: 'Xidoo Rutas tiene un espacio para que el público salmantino pueda informarse de primera mano lo que acontece día a día en la ciudad.',
          image: Image.asset(
            "assets/anuncios.png",
            height: 280,
            width: 320,
            fit: BoxFit.fill,
          ),
          decoration: getPageDecoration(),
        ),
        
      ],
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.blue,
        activeSize: Size.square(15),
        activeColor: Colors.blue,
      ),
      showDoneButton: true,
      done: const Text('Listo', style: TextStyle(fontSize: 20),),
      showSkipButton: true,
      skip: const Text('Saltar', style: TextStyle(fontSize: 20),),
      showNextButton: true,
      next: const Icon(Icons.arrow_forward, size: 20,),
      onDone: () => onDone(context),
    ),
  );

  void onDone(context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)  => Home()));
  }

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 28, 
      fontWeight: FontWeight.bold,),
    bodyTextStyle: TextStyle(
      fontSize: 20,
      ),
    imagePadding: EdgeInsets.all(10)
  );

  
}
