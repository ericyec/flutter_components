import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEneble = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sliders & Checks')),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 500,
              value: _sliderValue,
              onChanged: _sliderEneble
                  ? (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    }
                  : null,
            ),
            Checkbox(
                value: _sliderEneble,
                onChanged: (value) {
                  setState(() {
                    _sliderEneble = value ?? true;
                  });
                }),
            CheckboxListTile(
              title: const Text('Habilitar boton'),
              activeColor: AppTheme.primary,
              value: _sliderEneble,
              onChanged: (value) {
                setState(() {
                  _sliderEneble = value ?? true;
                });
              },
            ),
            SwitchListTile.adaptive(
              title: const Text('Habilitar boton'),
              activeColor: AppTheme.primary,
              value: _sliderEneble,
              onChanged: (value) {
                setState(() {
                  _sliderEneble = value;
                });
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1500485035595-cbe6f645feb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
