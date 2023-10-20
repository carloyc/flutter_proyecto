import 'package:flutter/material.dart';
import 'package:testgroupb/kernel/validations/validations.dart';


class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _fullname = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
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
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Nombre completo'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Este campo es obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      controller: _fullname,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Edad'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Este campo es obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      controller: _age,
                    ),
                  ),
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
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: _isButtonDisabled
                          ? null
                          : () {
                              print('$_fullname.text ');
                            },
                      child: const Text('Registrar'),
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