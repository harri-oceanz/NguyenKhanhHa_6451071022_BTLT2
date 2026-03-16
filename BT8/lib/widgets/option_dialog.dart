import 'package:flutter/material.dart';
import '../models/option_model.dart';

class OptionDialog {

  static Future<String?> show(BuildContext context) {

    return showDialog<String>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text("Choose an option"),
          children: options.map((option) {

            return InkWell(
              hoverColor: Colors.blue.shade100,
              onTap: (){
                Navigator.pop(context, option.title);
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(option.title),
              ),
            );

          }).toList(),
        );
      },
    );
  }

}