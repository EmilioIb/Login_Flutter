import 'package:flutter/material.dart';
import 'package:dmm_exercise5/login.dart';
import 'package:dmm_exercise5/signup.dart';

void main() {
  runApp(MyApp());
}

//Stateful        - Es aquel que durante la ejecucion va a cambiar valores
//StatelessWidget - Es aquel que NO cambia

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emilio Ibarra Valdez - Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //Deja un espacio seguro para celulares con pantalla curva
        child: Container(
          width: double.infinity, //Se ajusta al tamaño del padre
          height: MediaQuery.of(context)
              .size
              .height, //Se intenta ajustar al tamaño de la pantalla
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28.0,
                      letterSpacing: 8.0,
                      color: Color.fromRGBO(39, 59, 122, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ), //Para agregar un espacio
                  Text(
                    'Practica 5 - Login',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 127, 79, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/icono.png"))),
              ),
              Column(
                children: [
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color.fromRGBO(39, 59, 122, 1)),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(39, 59, 122, 1),
                            fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginLanding())); //Es para abrir otras material apps, le tienes que indicar que tipo es
                      }),
                  SizedBox(height: 20),
                  MaterialButton(
                      minWidth: double.infinity,
                      color: Color.fromRGBO(39, 59, 122, 1),
                      height: 60,
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(color: Color.fromRGBO(39, 59, 122, 1)),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 20,),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
