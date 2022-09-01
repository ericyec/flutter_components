import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardTypeB extends StatelessWidget {
  final String imageURL;
  final String? name;

  const CustomCardTypeB({Key? key, required this.imageURL, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.25),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageURL),
          placeholder: const AssetImage('assets/images/jar-loading.gif'),
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: Text(name!),
          )
      ]),
    );
  }
}
