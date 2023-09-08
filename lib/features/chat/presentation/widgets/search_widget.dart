import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  Search({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Search chat here....",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}
