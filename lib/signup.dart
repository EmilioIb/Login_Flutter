import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(39, 59, 122, 1),
              size: 24,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: Color.fromRGBO(39, 59, 122, 1)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Crea una cuenta, es gratis"),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      inputFile(
                        label: "Usuario",
                        x2: false,
                        x3: "Ingresa tu usuario",
                        x4: true,
                      ),
                      inputFile(
                        label: "Email",
                        x2: false,
                        x3: "Ingresa tu correo",
                        x4: false,
                      ),
                      inputFile(
                        label: "Contraseña",
                        x2: true,
                        x3: "Ingresa tu contraseña",
                        x4: false,
                      ),
                      inputFile(
                        label: "Confirmar contraseña",
                        x2: true,
                        x3: "Ingresa tu correo",
                        x4: false,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50),
                    MaterialButton(
                      minWidth: double.infinity,
                      color: Color.fromRGBO(39, 59, 122, 1),
                      height: 60,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign up", style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20),
                      ),
                      onPressed: () {
                      },
                    ),
                    SizedBox(height: 50),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ya tienes una cuenta? "),
                    MaterialButton(
                        minWidth: 30,
                        height: 30,
                        child: Text("LOGIN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(39, 59, 122, 1))),
                        onPressed: () {

                        }),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Widget inputFile({label, x2, x3, x4}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Color.fromRGBO(39, 59, 122, 1),
          )),
      SizedBox(height: 5),
     TextField(
        obscureText: x2,
        decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(39, 59, 122, 1))),
        border: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(39, 59, 122, 1))),
        hintText: x3,
        ),
        autofocus: x4,
        cursorColor: Color.fromRGBO(39, 59, 122, 1),
        style: TextStyle(color: Color.fromRGBO(39, 59, 122, 1)),
        ),
      SizedBox(
        height: 15,
      )
    ],
  );
}
