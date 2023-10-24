import 'package:flutter/material.dart';
import 'package:testgroupb/kernel/validations/validations.dart';
import 'package:testgroupb/modules/forms/adapters/screens/inicio.dart';

class Actividad extends StatefulWidget {
  const Actividad({super.key});

  @override
  State<Actividad> createState() => _ActividadState();
}

class _ActividadState extends State<Actividad> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _contrasena = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer formulario'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            onChanged: () {
              setState(() {
                _isButtonDisabled = !_formKey.currentState!.validate();
              });
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Container>[
                  Container(
                      child: Image.asset(
                    'assets/images/logo-utez.png',
                    width: 200,
                    height: 150,
                  )),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Correo electrónico*'),
                      validator: (value) {
                        RegExp regex = RegExp(AppPatterns.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Contraseña'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Este campo es obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      controller: _contrasena,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: _isButtonDisabled
                          ? null
                          : () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Inicio()),
                              );
                            },
                      child: const Text('Inicio de sesion'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
