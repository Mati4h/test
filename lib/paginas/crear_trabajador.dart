import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginas/actualizar_trabajador.dart';

class Create_Trabajador extends StatefulWidget {
  @override
  State<Create_Trabajador> createState() => _CreateTrabajadorState();
}

class _CreateTrabajadorState extends State<Create_Trabajador> {
  final _formkey = GlobalKey<FormState>();

  late String nombre_trabajador;
  late String telefono;
  late String Email;
  late String Rut;
  late String Edad;

  final List<String> errors = [];

  void removeError({required String error}) {
    if (error.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError({required String error}) {
    if (!error.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage: NetworkImage(''),
                radius: 60,
              ),
            ),
            const SizedBox(height: 40.0),
            _buildNameformField(),
            const SizedBox(height: 10.0),
            _buildTelefonoformField(),
            const SizedBox(height: 10.0),
            _buldEmailformField(),
            const SizedBox(height: 10.0),
            _buildRutformField(),
            const SizedBox(height: 10.0),
            _buildEdadformField(),
            const SizedBox(height: 50.0),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(124, 255, 200, 0))),
                child: const Text('Crear'),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("Guardar");
                  }
                  //Navigator.push(
              //context,
              //MaterialPageRoute(
                //builder: (context) => ActualizarTrabajador(),
              //));
                })
          ],
        ));
  }

  TextFormField _buildNameformField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => nombre_trabajador = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'nombre invalido');
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'nombre invalido');
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Nombre y Apellido",
        hintText: "Ej: Nombre(s) y Apellido(s)",
        suffixIcon: Icon(Icons.edit),
      ),
    );
  }

  TextFormField _buildTelefonoformField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => telefono = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'telefono invalido');
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'telefono invalido');
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Telefono",
        hintText: "Ej: 9 12345678",
      ),
    );
  }

  TextFormField _buldEmailformField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => Email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'email invalido');
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'email invalido');
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Ej: tu@correo.com",
      ),
    );
  }

  TextFormField _buildRutformField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => Rut = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'Rut Invalido');
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'Rut Invalido');
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Rut",
        hintText: "Ej: 12.345.678-9",
      ),
    );
  }

  TextFormField _buildEdadformField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => Edad = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'Edad Invalida');
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: 'Edad Invalida');
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Edad",
        hintText: "Ej: 45",
      ),
    );
  }
}
