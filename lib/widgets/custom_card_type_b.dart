import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardTypeB extends StatelessWidget {
  const CustomCardTypeB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.25),
      child: Column(children: [
        const FadeInImage(
          image: NetworkImage(
              'https://cdn.britannica.com/13/77413-050-95217C0B/Golden-Gate-Bridge-San-Francisco.jpg'),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
          child: const Text('Un paisaje'),
        )
      ]),
    );
  }
}
