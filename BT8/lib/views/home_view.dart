import 'package:flutter/material.dart';
import '../widgets/option_dialog.dart';
import '../utils/snackbar_helper.dart';

class HomeView extends StatelessWidget {

  const HomeView({super.key});

  void showSimpleDialog(BuildContext context) async {

    final result = await OptionDialog.show(context);

    if(result != null){
      SnackBarHelper.show(context, result);
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Dialog Demo",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "ElevatedButton",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () async {

                String? result = await OptionDialog.show(context);

                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Selected: $result"),
                      backgroundColor: Colors.purple[900],
                    ),
                  );
                }

              },

              child: const Text("SHOW DIALOG"),
            ),
            const SizedBox(height: 20),
            const Text(
              "6451071022",
              style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}