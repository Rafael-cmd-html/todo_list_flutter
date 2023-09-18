import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  @override
  State<ResetPass> createState() => ResetPassState();
}

class ResetPassState extends State<ResetPass> {
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
                //Desactivamos su interactividad por defecto
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                //Aplicamos decoración, como label, texto sobre el textfield y un icono de verificaci+on
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  labelText: 'Contraseña actual',
                  suffixIcon: Icon(Icons.password_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              const Divider(height: 20.0, color: Colors.white),
              TextField(
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'nueva contraseña',
                  labelText: 'Contraseña nueva',
                  suffixIcon: Icon(Icons.verified),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              const Divider(height: 20.0, color: Colors.white),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Confirmación',
                    labelText: 'Confirmar contraseña',
                    suffixIcon: Icon(Icons.verified),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const Divider(height: 20.0, color: Colors.white),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: const Text(
                    'Reestablecer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Rubik'),
                  ),
                ),
              ),
              const Divider(height: 30.0, color: Colors.white),
            ],
          )
        ],
      ),
    );
  }
}
