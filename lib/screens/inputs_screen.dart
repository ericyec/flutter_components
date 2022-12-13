import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'eric',
      'last_name': 'Rdgz',
      'email': 'ericyec@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: "Nombre",
                hintText: "Nombre del usuario",
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: "Apellido",
                hintText: "Apellido del usuario",
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: "Correo",
                hintText: "Correo del usuario",
                formProperty: 'email',
                formValues: formValues,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: "Contraseña",
                hintText: "Contraseña",
                formProperty: 'password',
                formValues: formValues,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const SizedBox(height: 30),

              // DropDown
              DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }),
              const SizedBox(height: 30),

              // ElevateButton
              ElevatedButton(
                onPressed: () {
                  // Deshabilidar teclado
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }
                  print('Datos: $formValues');
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar')),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
