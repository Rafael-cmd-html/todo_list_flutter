import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  @override
  State<ForgotPass> createState() => ForgotPassState();
}

class ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    //El scaffold retorna el modelado de una aplicación, lo que estoy haciendo es sobreescribirlos
    return Scaffold(
      backgroundColor: Colors.white,
      //ListView permite que los componentes gráficos se alineen en una lista vertical
      body: ListView(
        //Le agregamos un padding al ListView para centrar el logo
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
        children: <Widget>[
          // Envolvemos en una columna el widget para que la imagen se adapte al circulo
          Column(
            children: [
              // Creamos un componente circule avatar para el logo del login
              const CircleAvatar(
                // Le damos forma al avatar con un radio, color de fondo e imagen
                radius: 45.0,
                backgroundColor: Color.fromRGBO(206, 249, 250, 1),
                backgroundImage: AssetImage('images/abeja.png'),
              ),
              //Creamos divider para tener espacios entre los widgets
              const Divider(height: 20.0, color: Colors.white),
              //Creamos un texto debajo del logo que nos indicará que formulario es
              const Text('Reestablecer contraseña',
                  style: TextStyle(fontFamily: 'Rubik', fontSize: 20.0)),
              const Divider(height: 20.0, color: Colors.white),
              //Creamos el textField para el nombre de usuario
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Escribe el email vinculado',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const Divider(height: 30.0, color: Colors.white),
              const Text('Acceder',
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 12.0,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline)),
              const Divider(height: 20.0, color: Colors.white),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Enviar correo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Rubik'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
