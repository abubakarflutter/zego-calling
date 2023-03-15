import 'package:flutter/material.dart';

import 'call_page.dart';


class HomePage extends StatelessWidget {
  final callIdController = TextEditingController(text: "call_id");

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: callIdController,
                  decoration: const InputDecoration(labelText: "Enter Call ID"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CallPage(callID: callIdController.text);
                    }),
                  );
                },
                child: const Text("join"),
              )
            ],
          ),
        ),
      ),
    );
  }
}