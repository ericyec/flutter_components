// *** Permite trabajar con formularios y validaciones
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      //initialValue: 'Eric',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType == null ? null : TextInputType.emailAddress,
      obscureText: obscureText,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Es requerido';
        return value.length < 3 ? 'Mínimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffix: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // El estilo de los TextFormFiels se definio en el app_theme.dart
      ),
    );
  }
}
