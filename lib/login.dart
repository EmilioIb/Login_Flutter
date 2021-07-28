import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.add_to_home_screen),
        ),
        backgroundColor: Color.fromRGBO(39, 59, 122, 1),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(39, 59, 122, 1),
                      letterSpacing: 8.0),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ingresa tus datos",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(255, 127, 79, 1)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  inputFile(
                    label: "Email",
                    x2: false,
                    x3: "Ingresa tu correo",
                    x4: true,
                  ),
                  inputFile(
                    label: "Password",
                    x2: true,
                    x3: "Ingresa tu contraseña",
                    x4: false,
                  ),
                  inputFile(
                    label: "Captcha",
                    x2: false,
                    x3: "Captcha",
                    x4: false,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CREATE ACCOUNT "),
                MaterialButton(
                    minWidth: 30,
                    height: 30,
                    child: Text("SIGN UP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromRGBO(39, 59, 122, 1))),
                    onPressed: () {

                    }),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/candado.png"),
                      fit: (BoxFit.fitHeight))),
            )
          ],
        ),
      ),
    );
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
              color: Color.fromRGBO(39, 59, 122, 1))),
      SizedBox(height: 5),
      TextField(
        obscureText: x2,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            //Es para el manejo de errores
            borderSide: BorderSide(color: Color.fromRGBO(39, 59, 122, 1)),
            //borderRadius: BorderRadius.circular(20)
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(39, 59, 122, 1))),
          hintText: x3,
          /*fillColor: Colors.white,
          filled: true,
          hoverColor: Color.fromRGBO(39, 59, 122, 1),
          readOnly: false,*/
        ),
        autofocus: x4,
        cursorColor: Color.fromRGBO(39, 59, 122, 1),
        style: TextStyle(color: Color.fromRGBO(39, 59, 122, 1)),
      ),
      SizedBox(height: 20),
    ],
  );
}
