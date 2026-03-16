import 'package:flutter/material.dart';

class SnackBarHelper {

  static void show(BuildContext context, String message){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Selected: $message"),
        duration: const Duration(seconds: 2),
      ),
    );
  }

}