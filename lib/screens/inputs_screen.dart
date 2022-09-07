import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            // *** Permite trabajar con formularios y validaciones
            TextFormField(
              autofocus: false,
              //initialValue: 'Eric',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                if (value == null) return 'Es requerido';
                return value.length < 3 ? 'Mínimo 3 letras' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Solo letras',
                  suffix: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)))),
            )
          ],
        ),
      )),
    );
  }
}
